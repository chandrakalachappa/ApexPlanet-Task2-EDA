# ApexPlanet Data Analytics Internship — Task 2
## Exploratory Data Analysis (EDA) & Business Intelligence

### 1. Objective
Explore the cleaned Task 1 dataset, summarize its characteristics, answer business questions using SQL, investigate relationships among numerical variables, and present findings in a static dashboard.

### 2. Dataset overview
- Rows: **1,000**
- Columns: **19**
- Date range: **2025-01-01 to 2026-01-01**
- Unique `Order_ID` values: **1,000**
- Unique `Original_Order_ID` values: **992**
- Unique customers (`Customer_ID`): **947**
- Total quantity: **5,435**
- Total sales (sum of `Total_Sales`): **139,399,439.65**
- Average `Total_Sales` per row: **139,399.44**
- Median `Total_Sales` per row: **108,594.02**

**Interpretation note:** The currency/unit for `Total_Sales` is not specified in the CSV, so this report uses neutral “sales units” and does not assume a currency.

### 3. Data quality assessment
- Total missing cells: **0**
- Exact duplicate rows: **0**
- `Sales_Calculation_Check` passed: **1000/1000 rows**
- Rows flagged by the existing `Total_Sales_Outlier_IQR` indicator: **19**
- The file contains **992** distinct `Original_Order_ID` values for **1,000** rows. The original ID repeats in some records; this should be reviewed as a possible duplicate-order or data-lineage issue, but it does not automatically mean the rows are duplicates.
- The date range includes dates in 2025 and 2026. Interpret the final month carefully because the dataset's latest date is **2026-01-01** and the latest month may be incomplete.

### 4. Descriptive statistics and univariate analysis
The dataset contains order-level records with customer, product, location, quantity, price, sales, and quality-check fields.

- Mean `Age`: **41.35**
- Median `Age`: **41.00**
- Mean `Quantity` per row: **5.43**
- Median `Quantity` per row: **5.00**
- Most frequent category by row count: **Electronics** (354 rows)
- Most frequent product by row count: **Mobile** (184 rows)

Charts are saved in the `charts/` folder:
- `total_sales_histogram.png`
- `sales_by_category.png`
- `sales_by_city.png`
- `monthly_sales_trend.png`
- `correlation_heatmap.png`
- `quantity_vs_sales.png`

### 5. Business questions and SQL analysis
Seven SQL questions are implemented in `business_questions.sql`; the results are exported to `results/business_query_results/`.

1. How many rows, unique customers, and unique orders are in the dataset?
2. Which categories generate the highest total sales?
3. Which five products have the highest total sales?
4. How do sales vary by month?
5. Which cities generate the highest total sales?
6. How do total and average sales differ by gender?
7. How do total and average sales differ by age group?

### 6. Initial findings from the dataset
- **Highest-sales category:** Electronics, with total sales of **50,778,581.70**.
- **Highest-sales product:** Laptop, with total sales of **25,443,008.51**.
- **Highest-sales city:** Patna, with total sales of **19,285,966.89**.
- **Highest-sales month:** 2025-03, with total sales of **13,059,899.94**.
- **Age group with the highest total sales:** 36-50.
- **Gender with the highest total sales:** Male.

These are descriptive results, not proof of why a category, product, city, or group performs better. They should be interpreted alongside row counts and data coverage.

### 7. Multivariate analysis and correlation
A numerical correlation matrix and heatmap are provided. `Quantity` and `Total_Sales` are useful variables to examine together. Since `Total_Sales` may be calculated from `Quantity × Unit_Price`, a positive association can partly reflect that formula rather than an independent business relationship. Correlation does not establish causation.

### 8. Dashboard
A static PowerPoint dashboard mock-up is saved in `dashboard/Task2_Dashboard.pptx`. It summarizes key metrics and includes sales visualizations. Review the slide and adjust the layout if your mentor has a required template.

### 9. Recommendations
1. Review repeated `Original_Order_ID` values and confirm whether they represent legitimate separate line items or repeated orders.
2. Review the 19 rows flagged by the provided IQR outlier indicator before removing or changing any values; an outlier is not automatically an error.
3. Compare categories, products, cities, and months using both sales totals and row counts.
4. Confirm the business meaning and currency of `Total_Sales` before presenting financial conclusions.
5. Check whether the last month is complete before comparing it with full months.

### 10. Conclusion
The project summarizes the dataset, checks basic data quality, creates descriptive visualizations, answers seven business questions with SQL, and explores numerical relationships. The report and output files should be reviewed before final submission to ensure they match the internship's latest instructions.

### Files
- `business_questions.sql` — seven SQL queries
- `results/` — summary tables and query results
- `charts/` — generated charts
- `dashboard/Task2_Dashboard.pptx` — static dashboard mock-up
- `README.md` — project guide
