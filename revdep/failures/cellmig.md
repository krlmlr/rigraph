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
