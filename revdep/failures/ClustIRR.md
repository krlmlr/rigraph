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
