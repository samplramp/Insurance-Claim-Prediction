# Insurance Claim Prediction - Group 6

Big Data Analytics capstone using HDFS, Hive and PySpark/Spark MLlib.

## Objective
Analyze claim patterns and important claim characteristics and develop a classification workflow for insurance claim prediction.

## Pipeline
AutoInsuranceClaim.csv -> HDFS -> Hive analysis / PySpark -> preprocessing -> ML models -> HDFS predictions

## Models
- Logistic Regression
- Decision Tree
- Random Forest

## Results
Random Forest achieved the best F1 score (0.0974) and ROC-AUC (0.6213) among the tested models. Logistic Regression achieved the highest claim recall (0.5504).

## Repository Structure
- `data/data_dictionary.md`
- `hdfs/hdfs_commands.txt`
- `hive/insurance_claims_queries.sql`
- `spark/code.ipynb`
- `results/model_results.txt`
- `screenshots/`
- `presentation/`

## Important
Do not commit the 121 MB raw CSV directly to a normal GitHub repository. Store the dataset outside GitHub or use the team's approved large-file storage method.

## Run Order
1. Start the supplied Docker environment.
2. Upload the CSV to HDFS raw storage.
3. Create the Hive database and external table.
4. Run the Hive analysis queries.
5. Open and execute the PySpark notebook.
6. Verify Random Forest predictions in the HDFS results directory.
