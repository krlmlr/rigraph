#!/bin/bash
# Trigger build-cmake and stimulus workflow runs for commits on a branch
# that don't yet have a build status.
#
# Considers all commits on or after 2026-01-01 in the first-parent history from HEAD.
# For each such commit, checks for existing build-cmake and stimulus build statuses
# (success, failure, or running/pending).  Commits without a status are triggered
# in chronological order (oldest first).  All qualifying commits are always inspected
# and all pending ones are always triggered — there is no cap.
#
# To re-trigger builds for specific commits: rebase those commits above the boundary
# commit and force-push.  The script will then pick them up on the next run.
#
# Usage:
#   GH_TOKEN=<token> scripts/each-ci.sh
#
# Local testing example (check out the branch first, then run):
#   git checkout my-feature-dev
#   GH_TOKEN=$(gh auth token) scripts/each-ci.sh
#
# Environment variables:
#   GH_TOKEN  - GitHub token with statuses:read and actions:write (required)
#   SINCE     - earliest commit date to consider, ISO 8601 (default: 2026-01-01)
#   DRY_RUN   - if non-empty, print what would be triggered without actually running

set -euo pipefail

REF="$(git symbolic-ref HEAD)"
SINCE="${SINCE:-2026-01-01}"

gh auth status

echo "Branch ref: ${REF}"
echo "Scanning all commits on or after ${SINCE}"

commits_without_build_cmake=()
commits_without_stimulus=()

while IFS= read -r commit; do
  statuses=$(gh api "repos/{owner}/{repo}/commits/${commit}/statuses")

  build_cmake_status=$(echo "$statuses" | jq -r '.[] | select(.context == "build-cmake") | .state' | head -n 1)
  stimulus_status=$(echo "$statuses" | jq -r '.[] | select(.context == "stimulus") | .state' | head -n 1)

  if [[ -n "$build_cmake_status" ]]; then
    echo "${commit}: build-cmake has status '${build_cmake_status}', skipping"
  else
    echo "${commit}: no build-cmake status, queuing"
    commits_without_build_cmake+=("$commit")
  fi

  if [[ -n "$stimulus_status" ]]; then
    echo "${commit}: stimulus has status '${stimulus_status}', skipping"
  else
    echo "${commit}: no stimulus status, queuing"
    commits_without_stimulus+=("$commit")
  fi
done < <(git log --first-parent --pretty=format:"%H" --after="${SINCE}" --)

total_cmake="${#commits_without_build_cmake[@]}"
total_stimulus="${#commits_without_stimulus[@]}"
echo "Commits to trigger build-cmake for: ${total_cmake}"
echo "Commits to trigger stimulus for: ${total_stimulus}"

if (( total_cmake == 0 && total_stimulus == 0 )); then
  echo "Nothing to do"
  exit 0
fi

scheduled=0

# Trigger build-cmake in chronological order (oldest first)
for (( i=total_cmake-1; i>=0; i-- )); do
  commit="${commits_without_build_cmake[$i]}"
  if [[ -n "${DRY_RUN:-}" ]]; then
    echo "[dry-run] Would trigger build-cmake for commit ${commit}"
  else
    echo "Triggering build-cmake for commit ${commit}"
    gh workflow run build-cmake.yml -f ref="$commit" -r "$REF"
  fi
  scheduled=$(( scheduled + 1 ))
done

# Trigger stimulus in chronological order (oldest first)
for (( i=total_stimulus-1; i>=0; i-- )); do
  commit="${commits_without_stimulus[$i]}"
  if [[ -n "${DRY_RUN:-}" ]]; then
    echo "[dry-run] Would trigger stimulus for commit ${commit}"
  else
    echo "Triggering stimulus for commit ${commit}"
    gh workflow run stimulus.yml -f ref="$commit" -r "$REF"
  fi
  scheduled=$(( scheduled + 1 ))
done

echo "Scheduled ${scheduled} run(s)"
