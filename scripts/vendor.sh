#!/bin/bash
# Vendors igraph sources from upstream repository (manual vendoring)
# https://unix.stackexchange.com/a/654932/19205
# Using bash for -o pipefail

set -e
set -x
set -o pipefail

# Build the package and return the SHA-256 hash of the resulting shared
# library, or an empty string when the build fails or produces no library.
_dll_hash() {
  local tmpdir
  tmpdir=$(mktemp -d)
  UserNM=true R CMD INSTALL --library="$tmpdir" . >/dev/null 2>&1 || true
  local dll
  dll=$(find "$tmpdir" \( -name "*.so" -o -name "*.dll" \) 2>/dev/null | sort | head -1)
  local hash=""
  if [ -n "$dll" ]; then
    hash=$(python3 -c \
      "import hashlib,sys; print(hashlib.sha256(open(sys.argv[1],'rb').read()).hexdigest()[:16])" \
      "$dll" 2>/dev/null || true)
  fi
  rm -rf "$tmpdir"
  echo "$hash"
}

# Change to root of repository
cd "$(dirname "$0")"/..

project=igraph
vendor_base_dir=src/vendor
vendor_dir=${vendor_base_dir}/cigraph
repo_org=${project}
repo_name=${project}


if [ -z "$1" ]; then
  upstream_basedir=../../../${project}
else
  upstream_basedir="$1"
fi

upstream_dir=${project}

if [ "$upstream_basedir" != "$upstream_dir" ]; then
  git clone "$upstream_basedir" "$upstream_dir"
fi

if [ -n "$(git status --porcelain)" ]; then
  echo "Error: working directory not clean"
  exit 1
fi

if [ -n "$(git -C "$upstream_dir" status --porcelain)" ]; then
  echo "Warning: working directory $upstream_dir not clean"
fi

base=$(git log -n 3 --format="%s" -- ${vendor_dir} | tee /dev/stderr | sed -nr '/^.*'${repo_org}.${repo_name}'@([0-9a-f]+)( .*)?$/{s//\1/;p;}' | head -n 1)

original=$(git -C "$upstream_dir" rev-parse --verify HEAD)

message=
is_tag=

# Compute DLL hash of the current (pre-vendoring) build for comparison.
before_dll_hash=$(_dll_hash)

for commit in $original; do
  echo "Importing commit $commit"

  rm -rf ${vendor_dir}
  mkdir -p ${vendor_dir}

  git clone "$upstream_dir" ${vendor_dir}

  cmake -S${vendor_dir} -B${vendor_dir}/build

  mv ${vendor_dir}/build/include/igraph_version.h src/vendor/

  rm -rf ${vendor_dir}/.git ${vendor_dir}/.github ${vendor_dir}/doc ${vendor_dir}/examples ${vendor_dir}/fuzzing ${vendor_dir}/tests ${vendor_dir}/tools ${vendor_dir}/build

  for f in patch/*.patch; do
    if patch -i "$f" -p1 --forward --dry-run; then
      patch -i "$f" -p1 --forward --no-backup-if-mismatch
    else
      echo "Removing patch $f"
      rm "$f"
    fi
  done

  make -f Makefile-cigraph

  R -q -e 'cpp11::cpp_register()'

  # Always vendor tags
  if [ "$(git -C "$upstream_dir" describe --tags "$commit" | grep -c -- -)" -eq 0 ]; then
    message="vendor: Update vendored sources (tag $(git -C "$upstream_dir" describe --tags "$commit")) to ${repo_org}/${repo_name}@$commit"
    is_tag=true
    break
  fi

  # Build the package with the new sources and compare the DLL hash.
  # If the compiled output is identical, this commit has no semantic impact
  # (e.g. only comments or whitespace changed) and we skip it.
  after_dll_hash=$(_dll_hash)
  if [ -n "$before_dll_hash" ] && [ -n "$after_dll_hash" ] && [ "$before_dll_hash" = "$after_dll_hash" ]; then
    echo "DLL hash unchanged for commit $commit, skipping"
    continue
  fi

  message="vendor: Update vendored sources to ${repo_org}/${repo_name}@$commit"
  break
done

if [ "$message" = "" ]; then
  echo "No changes."
  git checkout -- ${vendor_base_dir}
  rm -rf "$upstream_dir"
  exit 0
fi

git add .

(
  echo "$message"
  echo
  git -C "$upstream_dir" log -1 --format="Date: %ai" "${commit}"
  echo
  git -C "$upstream_dir" log --first-parent --format="%s" "${base}".."${commit}" |
    tee /dev/stderr |
    sed -r 's%#([0-9]+)%https://redirect.github.com/'${repo_org}/${repo_name}'/pull/\1%g'
) | git commit --file /dev/stdin

rm -rf "$upstream_dir"

# Remove "unused" warnings
# Keep the variable for consistency between vendor.sh and vendor-one.sh
true "${is_tag}"
