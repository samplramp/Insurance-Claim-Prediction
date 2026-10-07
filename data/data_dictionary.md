# Data Dictionary - Insurance Claim Prediction

The dataset contains 59 columns.

## Target
- `target`: insurance claim indicator; 0 = no claim, 1 = claim.

## Identifier
- `id`: record identifier.

## Driver / Individual Features
- `ps_ind_*`: individual/driver-related features.
- `_cat` indicates categorical-style fields.
- `_bin` indicates binary fields.

## Regional Features
- `ps_reg_*`: regional characteristics.

## Vehicle Features
- `ps_car_*`: vehicle-related characteristics, including categorical, numerical and binary fields.

## Calculation Features
- `ps_calc_*`: calculated features supplied by the dataset.

The exact schema is defined in the Hive table and inspected through the PySpark DataFrame schema.
