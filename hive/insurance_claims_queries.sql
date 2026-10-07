CREATE DATABASE IF NOT EXISTS insurance_db;

USE insurance_db;

CREATE EXTERNAL TABLE IF NOT EXISTS insurance_claims (
    id INT,
    target INT,
    ps_ind_01 INT,
    ps_ind_02_cat DOUBLE,
    ps_ind_03 INT,
    ps_ind_04_cat DOUBLE,
    ps_ind_05_cat DOUBLE,
    ps_ind_06_bin INT,
    ps_ind_07_bin INT,
    ps_ind_08_bin INT,
    ps_ind_09_bin INT,
    ps_ind_10_bin INT,
    ps_ind_11_bin INT,
    ps_ind_12_bin INT,
    ps_ind_13_bin INT,
    ps_ind_14 INT,
    ps_ind_15 INT,
    ps_ind_16_bin INT,
    ps_ind_17_bin INT,
    ps_ind_18_bin INT,
    ps_reg_01 DOUBLE,
    ps_reg_02 DOUBLE,
    ps_reg_03 DOUBLE,
    ps_car_01_cat DOUBLE,
    ps_car_02_cat DOUBLE,
    ps_car_03_cat DOUBLE,
    ps_car_04_cat DOUBLE,
    ps_car_05_cat DOUBLE,
    ps_car_06_cat DOUBLE,
    ps_car_07_cat DOUBLE,
    ps_car_08_cat DOUBLE,
    ps_car_09_cat DOUBLE,
    ps_car_10_cat DOUBLE,
    ps_car_11_cat DOUBLE,
    ps_car_11 DOUBLE,
    ps_car_12 DOUBLE,
    ps_car_13 DOUBLE,
    ps_car_14 DOUBLE,
    ps_car_15 DOUBLE,
    ps_calc_01 DOUBLE,
    ps_calc_02 DOUBLE,
    ps_calc_03 DOUBLE,
    ps_calc_04 INT,
    ps_calc_05 INT,
    ps_calc_06 INT,
    ps_calc_07 INT,
    ps_calc_08 INT,
    ps_calc_09 INT,
    ps_calc_10 INT,
    ps_calc_11 INT,
    ps_calc_12 INT,
    ps_calc_13 INT,
    ps_calc_14 INT,
    ps_calc_15_bin INT,
    ps_calc_16_bin INT,
    ps_calc_17_bin INT,
    ps_calc_18_bin INT,
    ps_calc_19_bin INT,
    ps_calc_20_bin INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/data/insurance/raw';

SHOW DATABASES;
USE insurance_db;
SHOW TABLES;

SELECT COUNT(*) AS total_records
FROM insurance_claims;

SELECT target, COUNT(*) AS total_records
FROM insurance_claims
GROUP BY target;

SELECT
    ROUND(100.0 * SUM(CASE WHEN target = 1 THEN 1 ELSE 0 END) / COUNT(*), 2)
    AS claim_percentage
FROM insurance_claims;

SELECT
    AVG(ps_ind_03) AS avg_driver_feature,
    AVG(ps_reg_01) AS avg_region_feature,
    AVG(ps_car_12) AS avg_car_feature,
    AVG(ps_car_13) AS avg_car_rating
FROM insurance_claims;

SELECT
    ps_ind_03,
    target,
    COUNT(*) AS total_records
FROM insurance_claims
GROUP BY ps_ind_03, target
ORDER BY ps_ind_03, target;
