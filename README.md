# Kimia Farma Performance Analytics (2020–2023)

Project-Based Internship — Big Data Analytics, Kimia Farma x Rakamin Academy

## Overview
This project analyzes Kimia Farma's business performance from 2020 to 2023 using transaction, product, branch, and inventory datasets.

The workflow covers data preparation in Google BigQuery, development of an analytical table, and an interactive business dashboard in Google Looker Studio.

## Objectives
- Import and organize the four provided datasets in BigQuery.
- Build a structured analytical table for business performance analysis.
- Calculate gross profit margin tiers, Nett Sales, and Nett Profit at transaction level.
- Analyze sales, transactions, profitability, geographic performance, product mix, and branch ratings.
- Present the findings through an interactive Looker Studio dashboard.

## Tools & Stack
- **Google BigQuery** — data warehousing and SQL transformation
- **Google Looker Studio** — dashboard development and data visualization
- **GitHub** — SQL version control and project documentation

## Data Sources

| Dataset | Description |
|---|---|
| `kf_final_transaction` | Transaction-level records including customer, date, price, discount, and transaction rating |
| `kf_product` | Product master data including product name, category, and price |
| `kf_kantor_cabang` | Branch master data including branch name, city, province, and branch rating |
| `kf_inventory` | Inventory data by branch and product |

## Workflow
1. Imported all four raw datasets into BigQuery as individual tables.
2. Built `tabel_analisa` for dashboard analysis by combining transaction, branch, and product data.
3. Derived the following analytical fields:
   - `persentase_gross_laba` — profit margin tier based on product price
   - `nett_sales` — selling price after discount
   - `nett_profit` — Nett Sales multiplied by the applicable gross profit percentage
4. Connected `tabel_analisa` to Google Looker Studio.
5. Built an interactive dashboard with filters for date, province, city, branch, and product.

> **Note:** The inventory dataset is imported and retained in BigQuery as part of the project source data. The current primary dashboard table uses transaction, branch, and product fields required for the performance analysis.

## SQL Script
The SQL query used to create the main analytical table is available here:

- [`tabel_analisa.sql`](./tabel_analisa.sql)

## Dashboard

The Looker Studio dashboard includes:
- Performance KPI snapshot
- Nett Sales by Province
- Nett Sales Mix by Product
- Nett Sales by Year
- Top 10 Provinces by Transactions
- Profit Margin by Year
- Nett Profit by Province
- Branch Rating Gap Analysis
- Key Business Insights

**Interactive dashboard:** public Looker Studio link will be added here.

## Key Insights
- West Java contributes approximately **29.5%** of total Nett Sales, making it the largest contributing province.
- The **Top 5 provinces contribute approximately 53.7%** of total Nett Sales, indicating a relatively concentrated geographic contribution.
- Annual Nett Sales remained stable at around **Rp80B** throughout 2020–2023.
- Profit Margin remained highly stable at approximately **28.4%** across the observed period.
- Several branches with a Branch Rating of **5.0** still recorded lower Transaction Ratings, highlighting a gap between overall branch perception and transaction-level experience.

## Dashboard Requirements Covered
The dashboard was designed to address the project requirements, including:
- Dashboard title and summary
- Filter controls
- Performance snapshot
- Year-over-year revenue comparison
- Top 10 transactions by province
- Top 10 Nett Sales by province
- Branch rating vs. transaction rating analysis
- Indonesia geographic visualization of Nett Profit by province
- Additional profitability and product-mix analysis

## Video Walkthrough
Project presentation video will be added after the final presentation is completed.

## Author
**Muhammad Alfaruqi Ramzan Mahrudin**  
Mathematics Graduate — Universitas Pendidikan Indonesia
