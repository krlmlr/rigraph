# ChemmineOB (1.50.0)

* GitHub mirror: <https://github.com/cran/ChemmineOB>

Run `revdepcheck::revdep_details(, "ChemmineOB")` for more info

## In both

*   checking whether package ‘ChemmineOB’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘<lib>/ChemmineOB.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘ChemmineOB’ ...
** this is package ‘ChemmineOB’ version ‘1.50.0’
** using staged installation
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for OPENBABEL... no
checking for OPENBABEL... no
checking for gcc... gcc -std=gnu2x
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
...
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0’
g++ -std=gnu++20 -I"/usr/local/lib/R/include" -DNDEBUG -I/usr/include/openbabel3  -I/usr/include/eigen3  -DUSE_BOOST -DHAVE_EIGEN -D_LIBCPP_ENABLE_CXX17_REMOVED_UNARY_BINARY_FUNCTION  -I/usr/local/include/eigen3 -I/usr/local/include/openbabel3    -I'/opt/revdepx/lib/BH/include' -I'/opt/revdepx/lib/Rcpp/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -g0  -c ChemmineOB.cpp -o ChemmineOB.o
ChemmineOB.cpp:1569:10: fatal error: openbabel/obutil.h: No such file or directory
 1569 | #include <openbabel/obutil.h>
      |          ^~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [/usr/local/lib/R/etc/Makeconf:199: ChemmineOB.o] Error 1
ERROR: compilation failed for package ‘ChemmineOB’
* removing ‘/revdepx/out/ChemmineOB.Rcheck/ChemmineOB’


```
### CRAN

```
* installing *source* package ‘ChemmineOB’ ...
** this is package ‘ChemmineOB’ version ‘1.50.0’
** using staged installation
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for OPENBABEL... no
checking for OPENBABEL... no
checking for gcc... gcc -std=gnu2x
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
...
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0’
g++ -std=gnu++20 -I"/usr/local/lib/R/include" -DNDEBUG -I/usr/include/openbabel3  -I/usr/include/eigen3  -DUSE_BOOST -DHAVE_EIGEN -D_LIBCPP_ENABLE_CXX17_REMOVED_UNARY_BINARY_FUNCTION  -I/usr/local/include/eigen3 -I/usr/local/include/openbabel3    -I'/opt/revdepx/lib/BH/include' -I'/opt/revdepx/lib/Rcpp/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -g0  -c ChemmineOB.cpp -o ChemmineOB.o
ChemmineOB.cpp:1569:10: fatal error: openbabel/obutil.h: No such file or directory
 1569 | #include <openbabel/obutil.h>
      |          ^~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [/usr/local/lib/R/etc/Makeconf:199: ChemmineOB.o] Error 1
ERROR: compilation failed for package ‘ChemmineOB’
* removing ‘/revdepx/out/ChemmineOB.Rcheck/ChemmineOB’


```
