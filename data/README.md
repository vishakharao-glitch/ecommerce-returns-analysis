## 📦 Raw Data: E-Commerce Orders Dataset

This dataset serves as the foundation for all analysis across Python, SQL, and Power BI. It contains transactional, customer, and operational details from an e-commerce platform.

### ✅ Source Files
- **Orders**: Core transactional data including sales, profit, discount, shipping dates, and customer details  
- **Returns**: List of returned orders used to flag return behavior  
- **People**: Regional managers and their assigned territories

### 📊 Key Columns in `Orders`
- `Order Date`, `Ship Date`: Used to calculate shipping duration  
- `Sales`, `Profit`, `Discount`: Core financial metrics  
- `Category`, `Sub-Category`, `Product Name`: Product hierarchy  
- `Region`, `Segment`: Customer and geographic segmentation  
- `Order ID`, `Customer Name`: Unique identifiers for tracking  
- `Returned`: Flag added during data cleaning to indicate returned orders

### 📐 Data Size & Sampling
- Original `Orders` sheet contains **51,291 rows** and spans columns **A to X**  
- Due to size constraints, only a sample of the data is included in the repository for demonstration purposes  
- Full dataset used for backend analysis and dashboarding

### 💾 Format & Usage
- Original format: Excel workbook with multiple sheets  
- Used across all project layers for consistent analysis

> 📌 This raw dataset is transformed through Python cleaning, SQL logic, and Power BI visuals to deliver end-to-end business insights.
