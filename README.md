# ApexPlanet Internship — Task 2: Exploratory Data Analysis (EDA)

## Project overview
This project explores the cleaned dataset from Task 1 using Python, Pandas, visualizations, SQL-style business questions, and a dashboard mock-up.

## Dataset
- File: `dataset/ApexPlanet_Task1_Cleaned_Dataset.csv`
- Rows: 1,000
- Columns: 19
- Missing cells: 0
- Exact duplicate rows: 0

## Project files
- `code/ApexPlanet_Task2_EDA.ipynb` — Jupyter Notebook for analysis
- `EDA_Report.md` — EDA report and findings
- `business_questions.sql` — SQL business questions/queries
- `results/QUICK_SUMMARY.txt` — quick summary of results
- `dashboard/Task2_Dashboard.pptx` — static dashboard mock-up
- `dataset/ApexPlanet_Task1_Cleaned_Dataset.csv` — cleaned dataset used for analysis

## How to run the notebook
1. Keep the notebook and dataset available on your computer.
2. Open `code/ApexPlanet_Task2_EDA.ipynb` in Jupyter Notebook.
3. Make sure the CSV is in the `dataset` folder relative to the project folder.
4. Run the notebook cells from top to bottom using **Shift + Enter**.
5. If the notebook reports that it cannot find the CSV, update the file path in the data-loading cell to the actual location of the CSV.

## Main analysis areas
- Dataset overview and data-quality checks
- Descriptive statistics and univariate analysis
- Business questions answered with SQL-style queries
- Multivariate analysis and correlation
- Charts and dashboard mock-up

## Important notes
- The dataset does not specify a currency, so sales values are reported in the dataset's original units.
- Outlier flags should be reviewed before deciding whether any records should be removed.
- Repeated original order identifiers should be investigated rather than automatically treated as duplicate rows.
