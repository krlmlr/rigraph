# igraph – C library

igraph is a C library for complex network analysis and graph theory. The source is pure C (C99) with a CMake build system.

## Required tools

| Tool          | Min version | Purpose                                    |
|---------------|-------------|--------------------------------------------|
| `cmake`       | 3.18        | Build system                               |
| `ninja`       | any         | Build backend (faster than make)           |
| `gcc` / `g++` | any modern  | C/C++ compiler                             |
| `flex`        | any         | Lexer generation for graph format parsers  |
| `bison`       | any         | Parser generation for graph format parsers |
| `libxml2-dev` | 2.7.4       | GraphML support                            |

`flex` and `bison` are **required** – pre-generated parser sources are not committed.

Optional but recommended:

- `ccache` – speeds up repeated builds significantly

## Install dependencies (Debian/Ubuntu)

```bash
bash tools/install-deps.sh
```

## Build

```bash
mkdir build
cd build
cmake .. -GNinja
cmake --build . --target build_tests
```

To also build benchmarks:
```bash
cmake --build . --target build_tests --target build_benchmarks
```

## Run tests

```bash
cd build
ctest --output-on-failure
```

Run tests in parallel (replace `4` with the number of CPU cores):
```bash
ctest --output-on-failure -j4
```

## Useful CMake options

| Option                       | Default | Meaning                                              |
|------------------------------|---------|------------------------------------------------------|
| `IGRAPH_USE_INTERNAL_BLAS`   | ON      | Use bundled BLAS (turn OFF to use `libopenblas-dev`) |
| `IGRAPH_USE_INTERNAL_LAPACK` | ON      | Use bundled LAPACK                                   |
| `IGRAPH_USE_INTERNAL_ARPACK` | ON      | Use bundled ARPACK (turn OFF for `libarpack2-dev`)   |
| `IGRAPH_USE_INTERNAL_GMP`    | ON      | Use bundled GMP (turn OFF for `libgmp-dev`)          |
| `IGRAPH_USE_INTERNAL_GLPK`   | ON      | Use bundled GLPK (turn OFF for `libglpk-dev`)        |
| `IGRAPH_GRAPHML_SUPPORT`     | ON      | GraphML via libxml2                                  |
| `BUILD_SHARED_LIBS`          | OFF     | Build shared library instead of static               |
| `CMAKE_BUILD_TYPE`           | Release | Set to `Debug` for debug symbols / sanitizers        |
| `USE_CCACHE`                 | ON      | Use ccache when available                            |

Example – build with all external dependencies:
```bash
cmake .. -GNinja \
  -DIGRAPH_USE_INTERNAL_BLAS=OFF \
  -DIGRAPH_USE_INTERNAL_LAPACK=OFF \
  -DIGRAPH_USE_INTERNAL_ARPACK=OFF \
  -DIGRAPH_USE_INTERNAL_GMP=OFF \
  -DIGRAPH_USE_INTERNAL_GLPK=OFF
```

## Project layout

```
src/          C source code
include/      Public headers
tests/
  unit/       Unit tests (largest set)
  regression/ Regression tests
  benchmarks/ Performance benchmarks
vendor/       Bundled third-party libraries (BLAS, LAPACK, ARPACK, GMP, GLPK, plfit)
tools/        Utility scripts
doc/          Documentation sources
etc/cmake/    CMake find-modules and helpers
```
