# Sales-Analysis
Data-driven analysis of retail sales trends and customer behavior
# 📊 Sales Analysis Project

This project explores and analyzes sales transaction data to uncover business insights and support data-driven decision-making. It covers customer purchasing behavior, product performance, and regional trends.

---

## 📌 Project Objectives

- Track total sales revenue and customer orders
- Identify top-selling products and regions
- Understand payment and return behavior
- Visualize key metrics through an interactive dashboard

---

## 🛠️ Tools Used

- **Python** (Pandas for data manipulation)
- **SQL** (for insight queries)
- **Power BI / Excel** (for dashboard creation)
- **Jupyter Notebook** *(optional)*

---

## 📁 Dataset Overview

| Column Name    | Description                          |
|----------------|--------------------------------------|
| order_id       | Unique order number                  |
| customer_id    | ID of the customer                   |
| product_name   | Product purchased                    |
| category       | Product category                     |
| quantity       | Quantity sold                        |
| price          | Price per unit                       |
| total_amount   | Total amount = quantity × price      |
| order_date     | Date of purchase                     |
| region         | Region of sale                       |
| payment_status | Paid or Pending                      |
| return_status  | Returned or Not Returned             |

---

## 📊 Insights Extracted

- 📈 Total revenue and orders
- 🥇 Top-selling products by quantity and value
- 🌍 Regional sales breakdown
- 💳 Payment vs. pending transactions
- 🔄 Return trends by category

---

## 🧮 Example SQL Queries

```sql
-- Total Revenue
SELECT SUM(total_amount) FROM sales;

-- Top 5 Products
SELECT product_name, SUM(quantity) AS total_sold
FROM sales
GROUP BY product_name
ORDER BY total_sold DESC
LIMIT 5;

-- Revenue by Region
SELECT region, SUM(total_amount) AS revenue
FROM sales
GROUP BY region;
