# bifrost (0.2.0)

* GitHub mirror: <https://github.com/cran/bifrost>

Run `revdepcheck::revdep_details(, "bifrost")` for more info

## Error before installation

### Devel

```
Dependencies not installed: RhpcBLASctl





```
### CRAN

```
Dependencies not installed: RhpcBLASctl





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
# gllvm (2.0.15)

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
# rladybugdb (0.4.4)

* GitHub mirror: <https://github.com/cran/rladybugdb>

Run `revdepcheck::revdep_details(, "rladybugdb")` for more info

## Error before installation

### Devel

```
old check timed out after 1800s, at: * checking whether package ‘rladybugdb’ can be installed ...





```
### CRAN

```
old check timed out after 1800s, at: * checking whether package ‘rladybugdb’ can be installed ...





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
# xpect (1.2)

* GitHub mirror: <https://github.com/cran/xpect>

Run `revdepcheck::revdep_details(, "xpect")` for more info

## Error before installation

### Devel

```
old check timed out after 1800s, at: * checking tests ...





```
### CRAN

```
old check timed out after 1800s, at: * checking tests ...





```
