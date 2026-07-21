![Sales Analytics Dashboard Banner](Images/sales_overview.png)

# Sales Analytics Dashboard


## Project Overview

This project is an end-to-end sales analytics solution designed to transform raw sales data into actionable business insights.

The project follows a complete data analytics workflow:

**Data Cleaning → Data Analysis → Data Visualisation**

Using **Python**, **SQL**, and **Power BI**, I cleaned and prepared the dataset, performed exploratory analysis to identify key business insights, and developed an interactive dashboard to analyse sales performance, product profitability, customer behaviour, and regional trends.

---

# Executive Summary KPIs

* **Total Revenue:** £2.33M[cite: 1]
* **Total Profit:** £292.30K[cite: 1]
* **Profit Margin:** 12.56%[cite: 1]
* **Total Orders:** 5K[cite: 1]
* **Average Order Value (AOV):** £455.20[cite: 1]

---

# Business Objectives

The aim of this project was to answer key business questions:

* How is overall sales performance changing over time?
* Which products generate the most revenue and profit?
* Which customers contribute the most value?
* Which regions perform best?
* Are high-sales products and customers also the most profitable?

---

# Tools & Technologies

| Tool            | Purpose                                             |
| --------------- | --------------------------------------------------- |
| Python (Pandas) | Data cleaning, transformation, and preparation      |
| SQL             | Data exploration and business analysis              |
| Power BI        | Interactive dashboard development and visualisation |
| DAX             | Creating calculated measures and KPIs               |
| GitHub          | Project documentation and version control           |

---

# Project Workflow

## 1. Data Cleaning & Preparation (Python)

The raw dataset was cleaned and prepared using Python.

Key steps included:

* Inspecting data quality and structure
* Handling missing values
* Removing duplicate records
* Correcting data types
* Standardising date fields
* Creating additional fields required for analysis
* Preparing a clean dataset for SQL analysis and Power BI reporting

The cleaned dataset was then exported for further analysis.

---

## 2. Data Analysis (SQL)

SQL was used to explore the dataset and answer business-focused questions.

Analysis included:

### Sales Performance

* Total sales and profit trends
* Monthly sales performance
* Revenue breakdown by category and segment

### Product Analysis

* Top-performing products by sales
* Most profitable products
* Product-level sales and profitability comparisons

### Customer Analysis

* Highest-value customers
* Customer segment performance
* Customer purchasing behaviour

### Regional Analysis

* Sales performance by region
* Profitability across geographic areas
* Identification of strong and weak performing locations

---

# 3. Power BI Dashboard

An interactive Power BI report was created to present key insights through multiple analytical pages.

## Sales Performance Overview

Provides a high-level summary of business performance.

Includes:

* High-level executive KPIs (£2.33M Sales, £292.30K Profit, 12.56% Margin across 5K Orders)[cite: 1]
* Monthly sales trends highlighting seasonal patterns[cite: 1]
* Sales and profit comparisons across Technology (~£1.0M sales), Furniture, and Office Supplies categories[cite: 1]
* Regional revenue highlights led by the West region[cite: 1]

---

## Product Performance Analysis

Focuses on product-level performance and profitability.

Includes:

* Analysis of top-performing items like the **Canon imageCLASS 2200 Advanced Copier** (£62K sales, £25K profit)[cite: 1]
* Identification of high-sales, negative-margin items such as the **Cisco TelePresence System EX90** (-£2K profit)[cite: 1]
* Product-level scatter plots evaluating sales volume against net margin[cite: 1]

---

## Customer Analysis

Explores customer behaviour and segment contributions.

Includes:

* Total customer metrics including an Average Customer Spend of £2.91K[cite: 1]
* Revenue breakdown across Consumer, Corporate, and Home Office segments[cite: 1]
* Top individual accounts by revenue, led by **Sean Miller** (£25K sales)[cite: 1]
* Profitability analysis identifying high-margin individual accounts like **Tamara Chand**[cite: 1]

---

## Regional Performance Analysis

Examines geographic differences in business performance.

Includes:

* Regional revenue distribution led by **West** (£739.81K) and **East** (£691.83K)[cite: 1]
* Regional profit comparison highlighting **West** (£111K) as the most profitable market[cite: 1]
* Top state analysis led by **California** (£0.46M sales, £76K profit) and **New York** (£0.31M sales, £74K profit)[cite: 1]
* Geographic map visualisations tracking sales distribution[cite: 1]

---

# Dashboard Preview

![Sales Performance Overview](Images/sales_overview.png)

![Product Performance Analysis](Images/product_performance.png)

![Customer Analysis](Images/customer_analysis.png)

![Regional Performance Analysis](Images/regional_analysis.png)

---

# Key Insights

### 1. Product Performance & Profitability Discrepancies
* **Top Overall Performer:** The **Canon imageCLASS 2200 Advanced Copier** is the single best product by a wide margin, generating **£62K in sales** and **£25K in profit**[cite: 1].
* **Revenue vs. Profit Mismatch:** High revenue does not always equal profitability[cite: 1]. For example, the **Cisco TelePresence System EX90** generated **£23K** in sales but operated at a **-£2K loss**[cite: 1]. Similarly, the **GBC DocuBind P400** yielded high sales (~£18K–£19K) but resulted in a **-£2K profit loss**[cite: 1].
* **Category Dynamics:** **Technology** drives overall growth with ~£1.0M in sales and ~£145K in total profit[cite: 1]. Conversely, **Furniture** generates strong revenue (~£0.75M) but yields the lowest profit (~£20K), indicating thin margins or high overhead costs[cite: 1].

### 2. Regional Insights
* **Top Geographic Markets:** The **West** region leads all territories in revenue (**£739.81K**) and total profit (**£111K**)[cite: 1].
* **Key State Drivers:** **California** (**£0.46M sales**, **£76K profit**) and **New York** (**£0.31M sales**, **£74K profit**) are the primary performance drivers[cite: 1].
* **Margin Drag Areas:** While **Texas** ranks 3rd in total revenue (**£0.17M**), it is noticeably absent from the top 10 most profitable states, signaling thin margins or steep discounting[cite: 1].

### 3. Customer & Segment Insights
* **Segment Volume:** The **Consumer** segment contributes the highest total sales volume, followed by **Corporate** and **Home Office**[cite: 1].
* **Account Efficiency:** Account revenue does not always correlate to profit[cite: 1]. **Sean Miller** generated the highest sales volume (~£25K) but delivered a near-zero/negative profit margin, whereas **Tamara Chand** delivered exceptionally high profit margins relative to sales volume[cite: 1].

---

# Strategic Recommendations

1. **Re-evaluate Product Pricing & Discounting:** Adjust pricing models or vendor terms for unprofitable products like the **Cisco TelePresence System** and **GBC DocuBind P400** to eliminate profit drag[cite: 1].
2. **Optimize Furniture Category Margins:** Review production/shipping costs or discounting structures in the **Furniture** category to improve overall return[cite: 1].
3. **Address Regional Inefficiencies:** Investigate state-level cost drivers in **Texas** to understand why high revenue isn't translating into bottom-line profit[cite: 1].

---

# Project Structure
Sales Analytics/
│
├── Dashboard/
│   ├── Sales_Analytics_Dashboard.pbix
│   └── Sales_Analytics_Dashboard.pdf
│
├── Data/
│   ├── raw_data.csv
│   └── cleaned_data.csv
│
├── Docs/
│
├── Images/
│   ├── sales_overview.png
│   ├── product_performance.png
│   ├── customer_analysis.png
│   └── regional_analysis.png
│
├── Notebooks/
│   └── Data_Cleaning_and_Preparation.ipynb
│
├── SQL/
│   └── sales_analysis.sql
│
└── README.md

---

# Skills Demonstrated

Through this project, I demonstrated:

* Data cleaning and preparation
* Exploratory data analysis
* SQL querying and analysis
* Data modelling
* DAX measure creation
* Dashboard design
* Data storytelling
* Business-focused insight generation

---

# Future Improvements

Potential improvements to extend this project:

* Add automated data refresh pipelines
* Introduce forecasting models for future sales prediction
* Add customer segmentation using machine learning techniques
* Build automated reporting workflows

---

# Author

**Ben McDonald**

Aspiring Data Analyst with experience in Python, SQL, Power BI, and data visualisation.