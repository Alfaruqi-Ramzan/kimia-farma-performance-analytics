--creating or replace table name tabel_analisa for analyzez data 
CREATE OR REPLACE TABLE kimia_farma.tabel_analisa AS 
  SELECT  a.transaction_id,a.date,c.branch_id,c.branch_name,c.kota,c.provinsi,c.rating as rating_cabang, a.customer_name,d.product_id,d.product_name,d.price as actual_price,a.discount_percentage,
--calculate gross_laba_percentage with all conditions needed 
  CASE 
    WHEN d.price<=50000 THEN 0.10
    WHEN d.price<=100000 THEN 0.15
    WHEN d.price<=300000 THEN 0.20
    WHEN d.price<=500000 THEN 0.25
    ELSE 0.30
  END AS persentase_gross_laba,
  --calculate nett sales by multipy price and (1 - discount)
  ROUND(d.price*(1-a.discount_percentage),0) AS nett_sales,
  --calculate nett profit by multiply nett sales with the conditions of gross laba percentage
  ROUND((d.price*(1-a.discount_percentage))*
  CASE 
    WHEN d.price<=50000 THEN 0.10
    WHEN d.price<=100000 THEN 0.15
    WHEN d.price<=300000 THEN 0.20
    WHEN d.price<=500000 THEN 0.25
    ELSE 0.30
  END) AS nett_profit, a.rating as rating_transaksi
  FROM kimia_farma.kf_final_transaction a
  --joining kantor_cabang table to bring in the fields needed from branch data
  JOIN kimia_farma.kf_kantor_cabang c ON a.branch_id = c.branch_id
  --also joining product table to pull in product fields needed
  JOIN kimia_farma.kf_product d ON a.product_id = d.product_id
