# Kimia Farma Performance Analytics (2020–2023)

Project-Based Internship Big Data Analytics, Kimia Farma x Rakamin Academy

## Overview

This project analyzes Kimia Farma's business performance from 2020 to 2023 using transaction, product, branch, and inventory data.

The analysis was done in BigQuery, then the final analytical table was connected to Looker Studio for dashboard development.

## Objectives

- Import the provided datasets into BigQuery
- Build one analytical table for dashboard analysis
- Calculate gross profit percentage, Nett Sales, and Nett Profit
- Analyze sales, transactions, profitability, product mix, geographic performance, and branch ratings
- Present the results in an interactive Looker Studio dashboard

## Tools

- Google BigQuery
- Google Looker Studio
- GitHub

## Data Sources

| Dataset | Description |
|---|---|
| `kf_final_transaction` | Transaction data including customer, date, price, discount, and transaction rating |
| `kf_product` | Product data including product name, category, and price |
| `kf_kantor_cabang` | Branch data including branch name, city, province, and branch rating |
| `kf_inventory` | Inventory data by branch and product |

## Process

1. Imported the four datasets into BigQuery.
2. Created `tabel_analisa` by joining transaction, branch, and product data.
3. Added calculated fields for:
   - `persentase_gross_laba`
   - `nett_sales`
   - `nett_profit`
4. Connected `tabel_analisa` to Looker Studio.
5. Built an interactive dashboard with date, province, city, branch, and product filters.

The inventory table is still included in the project source data, but it is not used in the main analytical table for this dashboard.

## SQL

The query used to create the analytical table is available here:

[`tabel_analisa.sql`](./tabel_analisa.sql)

## Dashboard

[Open the interactive Looker Studio dashboard](https://datastudio.google.com/reporting/f9a0e337-f6df-469b-82f4-f61c9f039cbe)

The dashboard includes:

- KPI summary
- Nett Sales by Province
- Nett Sales Mix by Product
- Nett Sales by Year
- Top 10 Provinces by Transactions
- Profit Margin by Year
- Nett Profit by Province
- Branch Rating Gap Analysis
- Key Business Insights

## Key Insights

- West Java contributes around **29.5%** of total Nett Sales.
- The Top 5 provinces contribute around **53.7%** of total Nett Sales.
- Annual Nett Sales stayed around **Rp80B** from 2020 to 2023.
- Profit Margin stayed close to **28.4%** during the same period.
- Some branches with a Branch Rating of **5.0** still had lower Transaction Ratings.

## Project Requirements

The dashboard covers the main requirements from the project brief:

- Dashboard title and summary
- Filter controls
- Snapshot data
- Year-over-year revenue comparison
- Top 10 transactions by province
- Top 10 Nett Sales by province
- Branch rating and transaction rating analysis
- Indonesia map for Nett Profit by province
- Additional analysis for product mix and profitability

## Video Walkthrough

The presentation video will be added after the final presentation is completed.

## Author

**Muhammad Alfaruqi Ramzan Mahrudin**  
Mathematics Graduate, Universitas Pendidikan Indonesia
