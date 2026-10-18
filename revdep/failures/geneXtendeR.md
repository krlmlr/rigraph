# geneXtendeR (1.37.0)

* GitHub mirror: <https://github.com/cran/geneXtendeR>

Run `revdepcheck::revdep_details(, "geneXtendeR")` for more info

## In both

*   checking whether package ‘geneXtendeR’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘<lib>/geneXtendeR.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘geneXtendeR’ ...
** this is package ‘geneXtendeR’ version ‘1.37.0’
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0’
gcc -std=gnu2x -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -g0 -c annotate.c -o annotate.o
annotate.c: In function ‘annotate’:
annotate.c:159:79: warning: format ‘%d’ expects argument of type ‘int’, but argument 2 has type ‘long unsigned int’ [-Wformat=]
  159 |                 Rf_error("annotate() doesn't handle output lines longer than %d characters", sizeof(Buffer));
      |                                                                              ~^              ~~~~~~~~~~~~~~
...
installing to /revdepx/out/geneXtendeR.Rcheck/00LOCK-geneXtendeR/00new/geneXtendeR/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘id’ is not exported by 'namespace:dplyr'
Execution halted
ERROR: lazy loading failed for package ‘geneXtendeR’
* removing ‘/revdepx/out/geneXtendeR.Rcheck/geneXtendeR’


```
### CRAN

```
* installing *source* package ‘geneXtendeR’ ...
** this is package ‘geneXtendeR’ version ‘1.37.0’
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0’
gcc -std=gnu2x -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -g0 -c annotate.c -o annotate.o
annotate.c: In function ‘annotate’:
annotate.c:159:79: warning: format ‘%d’ expects argument of type ‘int’, but argument 2 has type ‘long unsigned int’ [-Wformat=]
  159 |                 Rf_error("annotate() doesn't handle output lines longer than %d characters", sizeof(Buffer));
      |                                                                              ~^              ~~~~~~~~~~~~~~
...
installing to /revdepx/out/geneXtendeR.Rcheck/00LOCK-geneXtendeR/00new/geneXtendeR/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘id’ is not exported by 'namespace:dplyr'
Execution halted
ERROR: lazy loading failed for package ‘geneXtendeR’
* removing ‘/revdepx/out/geneXtendeR.Rcheck/geneXtendeR’


```
