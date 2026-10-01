# Kimia Farma Performance Analytics (2020–2023)

Project-Based Internship — Big Data Analytics, Kimia Farma x Rakamin Academy

## Overview
This project analyzes Kimia Farma's business performance from 2020 to 2023,
covering transaction, product, branch, and inventory data. The goal is to
transform raw transactional data into a structured analytical table and
present it as an interactive business dashboard.

## Objectives
- Consolidate four raw datasets (transactions, products, branches, inventory)
  into a single analytical table in BigQuery.
- Calculate net sales, gross profit margin tiers, and net profit per
  transaction.
- Visualize business performance trends and branch-level insights through
  an interactive dashboard.

## Tools & Stack
- **Google BigQuery** — data warehousing & SQL transformation
- **Google Looker Studio** — dashboard & data visualization
- **GitHub** — version control for SQL scripts and documentation

## Data Sources
| Dataset | Description |
|---|---|
| `kf_final_transaction` | Transaction-level records (customer, date, price, discount, rating) |
| `kf_product` | Product master data (name, category, price) |
| `kf_kantor_cabang` | Branch master data (name, city, province, rating) |
| `kf_inventory` | Stock data per branch and product |

## Workflow
1. Imported all four raw datasets into BigQuery as individual tables.
2. Built an analytical table (`tabel_analisa`) by joining transaction,
   branch, and product data, then derived:
   - `persentase_gross_laba` — profit margin tier based on product price
   - `nett_sales` — price after discount
   - `nett_profit` — net profit from nett sales × profit margin
3. Connected the analytical table to Google Looker Studio to build the
   performance dashboard.

## SQL Scripts
See [`tabel_analisa.sql`](./tabel_analisa.sql) for the full query used to
build the analytical table.

## Dashboard
🔗 [Performance Analytics Dashboard](ISI-LINK-LOOKER-STUDIO)

## Key Insights
- [ISI setelah dashboard jadi, misal: provinsi dengan nett sales tertinggi]
- [ISI: pola cabang rating tinggi tapi transaksi rendah]
- [ISI: tren pendapatan antar tahun]

## Video Walkthrough
🔗 [Project Presentation Video](ISI-LINK-YOUTUBE-ATAU-DRIVE)

## Author
**Muhammad Alfaruqi Ramzan Mahrudin**
Mathematics Graduate, Universitas Pendidikan Indonesia
[LinkedIn](ISI-LINK) · [GitHub](ISI-LINK)
