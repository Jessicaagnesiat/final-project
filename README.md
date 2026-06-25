# 📊 Customer Retention Analysis

> **Customer Retention Analysis using Exploratory Data Analysis (EDA), Cohort Analysis, and K-Means Clustering on the Brazilian E-Commerce Dataset.**

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas)
![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-F7931E?style=for-the-badge&logo=scikitlearn)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

---

## 📌 Project Overview

Customer retention is one of the most important drivers of sustainable business growth. While acquiring new customers is costly, retaining existing customers can significantly improve long-term profitability.

This project analyzes customer purchasing behavior using **Exploratory Data Analysis (EDA)**, **Cohort Analysis**, and **K-Means Clustering** to identify customer retention patterns, customer segments, and business opportunities for increasing repeat purchases.

The original dataset consisted of 8 separate CSV files. These datasets were first integrated using PostgreSQL before being processed further in Python for analysis, cohort analysis, and customer segmentation.
---

## 🎯 Business Problem

- Low customer retention and repeat purchase rate.
- Revenue relies heavily on first-time customers.
- Limited customer segmentation hinders effective retention strategies.

---

## 🎯 Project Objectives

- Analyze customer purchasing behavior.
- Measure customer retention using Cohort Analysis.
- Segment customers based on purchasing behavior and delivery experience.
- Evaluate the relationship between delivery performance and repeat purchase behavior.
- Provide data-driven business recommendations.

---

## 📂 Dataset

**Brazilian E-Commerce Public Dataset by Olist**

This dataset contains information about customers, orders, sellers, products, payments, reviews, and geolocation from a Brazilian e-commerce platform between **2016 and 2018**.

🔗 https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

## 🛠️ Tools & Technologies

- PostgreSQL
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- Tableau
- Jupyter Notebook

---

## 🔄 Project Workflow

Data Integration in PostgreSQL
        │
        ▼
Export Integrated Dataset
        │
        ▼
Data Cleaning
        │
        ▼
Feature Engineering
        │
        ▼
Exploratory Data Analysis
        │
        ▼
Cohort Analysis
        │
        ▼
Customer Segmentation
(K-Means Clustering)
        │
        ▼
Business Insights
        │
        ▼
Business Recommendations
```

---

## 📊 Dashboard

> Add your Tableau dashboard screenshot here.

![Dashboard](images/dashboard.png)

---

## 🔍 Key Findings

- Most customers were **one-time buyers**, resulting in low customer retention.
- The **Loyal Customer** segment generated the highest share of revenue.
- Delivery performance significantly influenced repeat purchase behavior.
- Customer segmentation identified **five distinct customer segments** for targeted retention strategies.

---

## 👥 Customer Segments

| Customer Segment | Characteristics |
|------------------|-----------------|
| Dormant Customers | Low engagement and high recency. |
| New Customers (Poor Delivery Experience) | First-time buyers affected by delivery delays. |
| High-Value Customers | High spending customers with strong revenue contribution. |
| Loyal Customers | Repeat buyers generating the highest revenue. |
| New Customers (Fast Delivery) | New customers with positive delivery experience and high retention potential. |

---

## 💡 Business Recommendations

| Customer Segment | Recommendation |
|------------------|---------------|
| 💤 Dormant Customers | Launch personalized re-engagement campaigns through email, push notifications, and limited-time promotions. |
| 🚚 New Customers (Poor Delivery Experience) | Improve delivery performance and provide compensation or second-purchase incentives. |
| 💎 High-Value Customers | Offer VIP benefits, exclusive promotions, and personalized services to strengthen loyalty. |
| ❤️ Loyal Customers | Expand loyalty programs, cross-selling, and exclusive rewards to maximize customer lifetime value. |
| 🌱 New Customers (Fast Delivery) | Encourage second purchases through personalized follow-up campaigns and promotional offers. |

---

## 📈 Dashboard Features

- Revenue Analysis
- Order Analysis
- Product Performance
- Delivery Performance
- Customer Retention (Cohort Analysis)
- Customer Segmentation
- Customer Behavior Analysis

---

## 📁 Repository Structure

```
Customer-Retention-Analysis
│
├── data/
├── notebooks/
│   └── Customer_Retention_Analysis.ipynb
│
├── dashboard/
│   └── Customer_Retention_Dashboard.twbx
│
├── images/
│   └── dashboard.png
│
├── presentation/
│   └── Customer_Retention_Analysis.pdf
│
└── README.md
```

---

## 🚀 Business Impact

This project demonstrates how customer analytics can help businesses:

- Improve customer retention.
- Increase repeat purchases.
- Identify high-value customer segments.
- Develop targeted marketing strategies.
- Support data-driven business decision making.

---

## 👩‍💻 Author

**Jessica Agnesia Tataung**

📧 Email: jessicaagnesiat@gmail.com

💼 LinkedIn: https://www.linkedin.com/in/jessicaagnesiat/

🌐 Portfolio: https://jessicaagnesiat.github.io/portofolio-data-scientist/

---

⭐ If you find this project helpful, don't forget to give this repository a star!
