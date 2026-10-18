# BloodCancerMultiOmics2017 (1.32.0)

* GitHub mirror: <https://github.com/cran/BloodCancerMultiOmics2017>

Run `revdepcheck::revdep_details(, "BloodCancerMultiOmics2017")` for more info

## Error before installation

### Devel

```
old check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
old check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
# cellmig (1.2.0)

* GitHub mirror: <https://github.com/cran/cellmig>

Run `revdepcheck::revdep_details(, "cellmig")` for more info

## In both

*   checking whether package ‘cellmig’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘<lib>/cellmig.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘cellmig’ ...
** this is package ‘cellmig’ version ‘1.2.0’
** using staged installation
Error in rstan::stanc(file_name, allow_undefined = TRUE, obfuscate_model_name = FALSE,  : 
  0
Syntax error in 'string', line 8, column 15 to column 16, parsing error:
   -------------------------------------------------
     6:    int<lower=0> N_group;         // number groups
     7:    vector[N] y;                  // cell velocity for N cells
     8:    int well_id [N];              // well ID
...
   -------------------------------------------------

Ill-formed declaration. ";" expected after variable declaration.
  It looks like you are trying to use the old array syntax.
  Please use the new syntax:
  array[N] int well_id;
Calls: <Anonymous> -> sapply -> lapply -> FUN -> <Anonymous>
Execution halted
ERROR: configuration failed for package ‘cellmig’
* removing ‘/revdepx/out/cellmig.Rcheck/cellmig’


```
### CRAN

```
* installing *source* package ‘cellmig’ ...
** this is package ‘cellmig’ version ‘1.2.0’
** using staged installation
Error in rstan::stanc(file_name, allow_undefined = TRUE, obfuscate_model_name = FALSE,  : 
  0
Syntax error in 'string', line 8, column 15 to column 16, parsing error:
   -------------------------------------------------
     6:    int<lower=0> N_group;         // number groups
     7:    vector[N] y;                  // cell velocity for N cells
     8:    int well_id [N];              // well ID
...
   -------------------------------------------------

Ill-formed declaration. ";" expected after variable declaration.
  It looks like you are trying to use the old array syntax.
  Please use the new syntax:
  array[N] int well_id;
Calls: <Anonymous> -> sapply -> lapply -> FUN -> <Anonymous>
Execution halted
ERROR: configuration failed for package ‘cellmig’
* removing ‘/revdepx/out/cellmig.Rcheck/cellmig’


```
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
# ClustIRR (1.10.0)

* GitHub mirror: <https://github.com/cran/ClustIRR>

Run `revdepcheck::revdep_details(, "ClustIRR")` for more info

## In both

*   checking whether package ‘ClustIRR’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘<lib>/ClustIRR.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘ClustIRR’ ...
** this is package ‘ClustIRR’ version ‘1.10.0’
** using staged installation
Error in rstan::stanc(file_name, allow_undefined = TRUE, obfuscate_model_name = FALSE,  : 
  0
Syntax error in 'string', line 2, column 20 to column 21, parsing error:
   -------------------------------------------------
     1:  functions {
     2:      real dm_lpmf(int[] y, vector alpha) {
                             ^
...

Ill-formed type. Expected an unsized type in function signature.
  For example, this means a type like "matrix", not "matrix[3,4]".
  If you are trying to use the old array syntax, you will need to use
  the new syntax, see:
  https://mc-stan.org/docs/reference-manual/types.html#array-data-types.section
Calls: <Anonymous> -> sapply -> lapply -> FUN -> <Anonymous>
Execution halted
ERROR: configuration failed for package ‘ClustIRR’
* removing ‘/revdepx/out/ClustIRR.Rcheck/ClustIRR’


```
### CRAN

```
* installing *source* package ‘ClustIRR’ ...
** this is package ‘ClustIRR’ version ‘1.10.0’
** using staged installation
Error in rstan::stanc(file_name, allow_undefined = TRUE, obfuscate_model_name = FALSE,  : 
  0
Syntax error in 'string', line 2, column 20 to column 21, parsing error:
   -------------------------------------------------
     1:  functions {
     2:      real dm_lpmf(int[] y, vector alpha) {
                             ^
...

Ill-formed type. Expected an unsized type in function signature.
  For example, this means a type like "matrix", not "matrix[3,4]".
  If you are trying to use the old array syntax, you will need to use
  the new syntax, see:
  https://mc-stan.org/docs/reference-manual/types.html#array-data-types.section
Calls: <Anonymous> -> sapply -> lapply -> FUN -> <Anonymous>
Execution halted
ERROR: configuration failed for package ‘ClustIRR’
* removing ‘/revdepx/out/ClustIRR.Rcheck/ClustIRR’


```
# consICA (2.10.0)

* GitHub mirror: <https://github.com/cran/consICA>

Run `revdepcheck::revdep_details(, "consICA")` for more info

## Error before installation

### Devel

```
new check timed out after 1800s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
new check timed out after 1800s, at: * checking re-building of vignette outputs ...





```
# COTAN (2.12.1)

* GitHub mirror: <https://github.com/cran/COTAN>

Run `revdepcheck::revdep_details(, "COTAN")` for more info

## Error before installation

### Devel

```
old check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
old check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
# ctmm (1.3.0)

* GitHub mirror: <https://github.com/cran/ctmm>

Run `revdepcheck::revdep_details(, "ctmm")` for more info

## Error before installation

### Devel

```
new check timed out after 1800s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
new check timed out after 1800s, at: * checking re-building of vignette outputs ...





```
# CuratedAtlasQueryR (1.10.0)

* GitHub mirror: <https://github.com/cran/CuratedAtlasQueryR>

Run `revdepcheck::revdep_details(, "CuratedAtlasQueryR")` for more info

## Error before installation

### Devel

```
new check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
new check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
# E2E (0.1.3)

* GitHub mirror: <https://github.com/cran/E2E>

Run `revdepcheck::revdep_details(, "E2E")` for more info

## Error before installation

### Devel

```
new check timed out after 1802s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
new check timed out after 1802s, at: * checking re-building of vignette outputs ...





```
# EMTscoreData (1.0.0)

* GitHub mirror: <https://github.com/cran/EMTscoreData>

Run `revdepcheck::revdep_details(, "EMTscoreData")` for more info

## Error before installation

### Devel

```
old check timed out after 1801s, at: * checking examples ...





```
### CRAN

```
old check timed out after 1801s, at: * checking examples ...





```
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
# GeomxTools (3.16.0)

* GitHub mirror: <https://github.com/cran/GeomxTools>

Run `revdepcheck::revdep_details(, "GeomxTools")` for more info

## Error before installation

### Devel

```
old check timed out after 1800s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
old check timed out after 1800s, at: * checking re-building of vignette outputs ...





```
# gllvm (2.0.13)

* GitHub mirror: <https://github.com/cran/gllvm>

Run `revdepcheck::revdep_details(, "gllvm")` for more info

## In both

*   checking whether package ‘gllvm’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘<lib>/gllvm.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
[... 17181 earlier lines omitted; the full 00install.out is in the check artifact ...]
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Transpose<const Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false> > >’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Transpose<const Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false> > >’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/Transpose.h:118:37:   required from ‘class Eigen::TransposeImpl<const Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false>, Eigen::Dense>’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/Transpose.h:52:37:   required from ‘class Eigen::Transpose<const Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false> >’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/Dot.h:50:23:   required from ‘static Eigen::internal::dot_nocheck<T, U, true>::ResScalar Eigen::internal::dot_nocheck<T, U, true>::run(const Eigen::MatrixBase<Derived>&, const Eigen::MatrixBase<U>&) [with T = Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false>; U = Eigen::Block<const Eigen::Block<const Eigen::Matrix<double, -1, -1>, -1, 1, true>, -1, 1, true>; ResScalar = double]’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/Dot.h:84:58:   [ skipping 31 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/opt/revdepx/lib/TMB/include/tmbutils/newton.hpp:698:27:   required from ‘newton::matrix<double> newton::jacobian_sparse_plus_lowrank_t<Fac>::llt_solve(const sparse_plus_lowrank<double>&, const newton::matrix<double>&) [with Fac = Eigen::SimplicialLDLT<Eigen::SparseMatrix<double> >]’
/opt/revdepx/lib/TMB/include/tmbutils/newton.hpp:1081:33:   required from ‘const char* newton::NewtonOperator<Functor, Hessian_Type>::newton_iterate(newton::vector<double>&) [with Functor = newton::slice<>; Hessian_Type = newton::jacobian_sparse_plus_lowrank_t<Eigen::SimplicialLDLT<Eigen::SparseMatrix<double> > >]’
/opt/revdepx/lib/TMB/include/tmbutils/newton.hpp:1155:5:   required from ‘void newton::NewtonOperator<Functor, Hessian_Type>::forward(TMBad::ForwardArgs<double>&) [with Functor = newton::slice<>; Hessian_Type = newton::jacobian_sparse_plus_lowrank_t<Eigen::SimplicialLDLT<Eigen::SparseMatrix<double> > >]’
...
/opt/revdepx/lib/TMB/include/tiny_ad/atomic.hpp:30:1:   required from ‘void atomic::bessel_kOp<order, ninput, noutput, mask>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; int order = 3; int ninput = 2; int noutput = 8; long int mask = 9]’
/opt/revdepx/lib/TMB/include/TMBad/global.hpp:1762:28:   required from ‘void TMBad::global::AddForwardMarkReverseMark<OperatorBase>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; OperatorBase = TMBad::global::AddIncrementDecrement<TMBad::global::AddDependencies<TMBad::global::AddInputSizeOutputSize<atomic::bessel_kOp<3, 2, 8, 9> > > >]’
/opt/revdepx/lib/TMB/include/TMBad/global.hpp:2155:57:   required from ‘void TMBad::global::Complete<OperatorBase>::reverse(TMBad::ReverseArgs<double>&) [with OperatorBase = atomic::bessel_kOp<3, 2, 8, 9>]’
/opt/revdepx/lib/TMB/include/TMBad/global.hpp:2155:10:   required from here
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:56:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/usr/local/lib/R/etc/Makeconf:199: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/revdepx/out/gllvm.Rcheck/gllvm’


```
### CRAN

```
[... 17181 earlier lines omitted; the full 00install.out is in the check artifact ...]
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Transpose<const Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false> > >’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Transpose<const Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false> > >’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/Transpose.h:118:37:   required from ‘class Eigen::TransposeImpl<const Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false>, Eigen::Dense>’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/Transpose.h:52:37:   required from ‘class Eigen::Transpose<const Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false> >’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/Dot.h:50:23:   required from ‘static Eigen::internal::dot_nocheck<T, U, true>::ResScalar Eigen::internal::dot_nocheck<T, U, true>::run(const Eigen::MatrixBase<Derived>&, const Eigen::MatrixBase<U>&) [with T = Eigen::Block<const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, 1, -1, false>; U = Eigen::Block<const Eigen::Block<const Eigen::Matrix<double, -1, -1>, -1, 1, true>, -1, 1, true>; ResScalar = double]’
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/Dot.h:84:58:   [ skipping 31 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/opt/revdepx/lib/TMB/include/tmbutils/newton.hpp:698:27:   required from ‘newton::matrix<double> newton::jacobian_sparse_plus_lowrank_t<Fac>::llt_solve(const sparse_plus_lowrank<double>&, const newton::matrix<double>&) [with Fac = Eigen::SimplicialLDLT<Eigen::SparseMatrix<double> >]’
/opt/revdepx/lib/TMB/include/tmbutils/newton.hpp:1081:33:   required from ‘const char* newton::NewtonOperator<Functor, Hessian_Type>::newton_iterate(newton::vector<double>&) [with Functor = newton::slice<>; Hessian_Type = newton::jacobian_sparse_plus_lowrank_t<Eigen::SimplicialLDLT<Eigen::SparseMatrix<double> > >]’
/opt/revdepx/lib/TMB/include/tmbutils/newton.hpp:1155:5:   required from ‘void newton::NewtonOperator<Functor, Hessian_Type>::forward(TMBad::ForwardArgs<double>&) [with Functor = newton::slice<>; Hessian_Type = newton::jacobian_sparse_plus_lowrank_t<Eigen::SimplicialLDLT<Eigen::SparseMatrix<double> > >]’
...
/opt/revdepx/lib/TMB/include/tiny_ad/atomic.hpp:30:1:   required from ‘void atomic::bessel_kOp<order, ninput, noutput, mask>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; int order = 3; int ninput = 2; int noutput = 8; long int mask = 9]’
/opt/revdepx/lib/TMB/include/TMBad/global.hpp:1762:28:   required from ‘void TMBad::global::AddForwardMarkReverseMark<OperatorBase>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; OperatorBase = TMBad::global::AddIncrementDecrement<TMBad::global::AddDependencies<TMBad::global::AddInputSizeOutputSize<atomic::bessel_kOp<3, 2, 8, 9> > > >]’
/opt/revdepx/lib/TMB/include/TMBad/global.hpp:2155:57:   required from ‘void TMBad::global::Complete<OperatorBase>::reverse(TMBad::ReverseArgs<double>&) [with OperatorBase = atomic::bessel_kOp<3, 2, 8, 9>]’
/opt/revdepx/lib/TMB/include/TMBad/global.hpp:2155:10:   required from here
/opt/revdepx/lib/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:56:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/usr/local/lib/R/etc/Makeconf:199: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/revdepx/out/gllvm.Rcheck/gllvm’


```
# hespdiv (1.2.10)

* GitHub mirror: <https://github.com/cran/hespdiv>

Run `revdepcheck::revdep_details(, "hespdiv")` for more info

## Error before installation

### Devel

```
Source tarball could not be downloaded





```
### CRAN

```
Source tarball could not be downloaded





```
# HMP2Data (1.25.0)

* GitHub mirror: <https://github.com/cran/HMP2Data>

Run `revdepcheck::revdep_details(, "HMP2Data")` for more info

## In both

*   checking whether package ‘HMP2Data’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘<lib>/HMP2Data.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘HMP2Data’ ...
** this is package ‘HMP2Data’ version ‘1.25.0’
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘id’ is not exported by 'namespace:dplyr'
Execution halted
ERROR: lazy loading failed for package ‘HMP2Data’
* removing ‘/revdepx/out/HMP2Data.Rcheck/HMP2Data’


```
### CRAN

```
* installing *source* package ‘HMP2Data’ ...
** this is package ‘HMP2Data’ version ‘1.25.0’
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘id’ is not exported by 'namespace:dplyr'
Execution halted
ERROR: lazy loading failed for package ‘HMP2Data’
* removing ‘/revdepx/out/HMP2Data.Rcheck/HMP2Data’


```
# IPO (1.38.0)

* GitHub mirror: <https://github.com/cran/IPO>

Run `revdepcheck::revdep_details(, "IPO")` for more info

## Error before installation

### Devel

```
old check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
old check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
# lefser (1.22.0)

* GitHub mirror: <https://github.com/cran/lefser>

Run `revdepcheck::revdep_details(, "lefser")` for more info

## Error before installation

### Devel

```
Dependencies not installed: mia, DirichletMultinomial





```
### CRAN

```
Dependencies not installed: mia, DirichletMultinomial





```
# mia (1.20.0)

* GitHub mirror: <https://github.com/cran/mia>

Run `revdepcheck::revdep_details(, "mia")` for more info

## Error before installation

### Devel

```
old check timed out after 1801s, at: * checking tests ...





```
### CRAN

```
old check timed out after 1801s, at: * checking tests ...





```
# msPurity (1.38.0)

* GitHub mirror: <https://github.com/cran/msPurity>

Run `revdepcheck::revdep_details(, "msPurity")` for more info

## Error before installation

### Devel

```
new check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
new check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
# omicsGMF (1.2.0)

* GitHub mirror: <https://github.com/cran/omicsGMF>

Run `revdepcheck::revdep_details(, "omicsGMF")` for more info

## Error before installation

### Devel

```
new check timed out after 1801s, at: * checking examples ...





```
### CRAN

```
new check timed out after 1801s, at: * checking examples ...





```
# orchaRd (2.2.1)

* GitHub mirror: <https://github.com/cran/orchaRd>

Run `revdepcheck::revdep_details(, "orchaRd")` for more info

## Error before installation

### Devel

```
old check timed out after 1800s, at: * checking tests ...





```
### CRAN

```
old check timed out after 1800s, at: * checking tests ...





```
# pageRank (1.22.0)

* GitHub mirror: <https://github.com/cran/pageRank>

Run `revdepcheck::revdep_details(, "pageRank")` for more info

## Error before installation

### Devel

```
Dependencies not installed: motifmatchr, TFBSTools, DirichletMultinomial





```
### CRAN

```
Dependencies not installed: motifmatchr, TFBSTools, DirichletMultinomial





```
# PortfolioTesteR (0.1.4)

* GitHub mirror: <https://github.com/cran/PortfolioTesteR>

Run `revdepcheck::revdep_details(, "PortfolioTesteR")` for more info

## Error before installation

### Devel

```
new check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
new check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
# scITD (1.0.4)

* GitHub mirror: <https://github.com/cran/scITD>

Run `revdepcheck::revdep_details(, "scITD")` for more info

## Error before installation

### Devel

```
Source tarball could not be downloaded





```
### CRAN

```
Source tarball could not be downloaded





```
# singIST (1.0.2)

* GitHub mirror: <https://github.com/cran/singIST>

Run `revdepcheck::revdep_details(, "singIST")` for more info

## Error before installation

### Devel

```
old check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
old check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
# sphet (2.1-1)

* GitHub mirror: <https://github.com/cran/sphet>

Run `revdepcheck::revdep_details(, "sphet")` for more info

## Error before installation

### Devel

```
Not checked (deferred)





```
### CRAN

```
Not checked (deferred)





```
# TENET (1.4.0)

* GitHub mirror: <https://github.com/cran/TENET>

Run `revdepcheck::revdep_details(, "TENET")` for more info

## Error before installation

### Devel

```
new check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
### CRAN

```
new check timed out after 1801s, at: * checking re-building of vignette outputs ...





```
# tinyVAST (1.6.2)

* GitHub mirror: <https://github.com/cran/tinyVAST>

Run `revdepcheck::revdep_details(, "tinyVAST")` for more info

## In both

*   checking whether package ‘tinyVAST’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘<lib>/tinyVAST.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
<00install.out file does not exist>


```
### CRAN

```
<00install.out file does not exist>


```
# xpect (1.2)

* GitHub mirror: <https://github.com/cran/xpect>

Run `revdepcheck::revdep_details(, "xpect")` for more info

## Error before installation

### Devel

```
new check timed out after 1801s, at: * checking tests ...





```
### CRAN

```
new check timed out after 1801s, at: * checking tests ...





```
