-- Create or replace the analytical table used for the dashboard
CREATE OR REPLACE TABLE kimia_farma.tabel_analisa AS
SELECT
  a.transaction_id,
  a.date,
  c.branch_id,
  c.branch_name,
  c.kota,
  c.provinsi,
  c.rating AS rating_cabang,
  a.customer_name,
  d.product_id,
  d.product_name,
  d.price AS actual_price,
  a.discount_percentage,

  -- Calculate gross profit percentage based on product price
  CASE
    WHEN d.price <= 50000 THEN 0.10
    WHEN d.price <= 100000 THEN 0.15
    WHEN d.price <= 300000 THEN 0.20
    WHEN d.price <= 500000 THEN 0.25
    ELSE 0.30
  END AS persentase_gross_laba,

  -- Calculate Nett Sales: price after discount
  ROUND(d.price * (1 - a.discount_percentage), 0) AS nett_sales,

  -- Calculate Nett Profit: Nett Sales multiplied by gross profit percentage
  ROUND(
    (d.price * (1 - a.discount_percentage)) *
    CASE
      WHEN d.price <= 50000 THEN 0.10
      WHEN d.price <= 100000 THEN 0.15
      WHEN d.price <= 300000 THEN 0.20
      WHEN d.price <= 500000 THEN 0.25
      ELSE 0.30
    END
  ) AS nett_profit,

  a.rating AS rating_transaksi

FROM kimia_farma.kf_final_transaction a

-- Join branch data
JOIN kimia_farma.kf_kantor_cabang c
  ON a.branch_id = c.branch_id

-- Join product data
JOIN kimia_farma.kf_product d
  ON a.product_id = d.product_id;
