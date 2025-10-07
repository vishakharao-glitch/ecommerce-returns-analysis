## 🐍 Python Analysis: Data Cleaning & EDA

This notebook performs the foundational data preparation and exploration for the project.

### ✅ Key Steps
- **Data Import**: Loaded three sheets (`Orders`, `Returns`, `People`) from the original Excel file
- **Data Cleaning**:
  - Converted date columns to datetime format
  - Removed duplicates
  - Checked for missing values and outliers
- **Feature Engineering**:
  - Calculated `Shipping Duration` (days between order and shipment)
  - Flagged returned orders using the `Returns` sheet
  - Computed `Profit Margin` as `Profit / Sales`
- **Exploratory Data Analysis (EDA)**:
  - Total Sales: ₹12.6M | Total Profit: ₹1.46M
  - Return Rate: 5.95%
  - Profit by Category: Technology leads, followed by Office Supplies and Furniture
  - Sales by Region: Central and South dominate
  - Negative correlation between Discount and Profit

### 💾 Output
- Final cleaned dataset exported as `cleaned_orders.csv` for use in SQL and Power BI

> 📌 This notebook sets the stage for deeper business logic in SQL and visual storytelling in Power BI.
