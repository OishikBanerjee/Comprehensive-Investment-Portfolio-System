# Investment Portfolio Database Project Report

## Submitted By:

- **Amrit Agarwal (055004)**
- **Oishik Banerjee (055028)**

---

## 1. Project Description
The **Investment Portfolio Database** is designed to store and manage information related to investments, transactions, investors, and financial assets. It enables efficient data retrieval, financial analysis, and portfolio management for investors and financial institutions.

---

## 2. Data Description
### 2.1 Database Schema
The database consists of the following tables:

- **Client**: Stores investor details.
- **Portfolio**: Manages different investment portfolios for clients.
- **InvestmentType**: Defines various types of investments.
- **Investment**: Records individual investment transactions.
- **Stock**: Tracks stock holdings within portfolios.
- **MutualFund**: Tracks mutual fund holdings within portfolios.
- **Transaction**: Logs buy/sell transactions of investments.
- **MarketData**: Stores market price data for various investment types.

### 2.2 Database Design
The database is designed using the following principles:
- **Relational Integrity**: Foreign keys maintain relationships between tables.
- **Indexing**: Primary keys ensure quick data retrieval.
- **Scalability**: Supports large volumes of investment data.

---

## 3. Querying and Data Retrieval
The system supports various SQL queries for financial analysis:

### Identify the top-performing investments across all portfolios
```sql
SELECT
    c.ClientID,
    c.Name,
    c.RiskProfile,
    COUNT(p.PortfolioID) AS NumberOfPortfolios,
    SUM(p.TotalValue) AS TotalInvestmentValue
FROM
    Client c
JOIN
    Portfolio p ON c.ClientID = p.ClientID
GROUP BY
    c.ClientID, c.Name, c.RiskProfile
ORDER BY
    TotalInvestmentValue DESC
LIMIT 10;
```

### Analyze investment strategies by client age groups
```sql
SELECT
    CASE
        WHEN TIMESTAMPDIFF(YEAR, c.DateOfBirth, CURDATE()) < 30 THEN 'Under 30'
        WHEN TIMESTAMPDIFF(YEAR, c.DateOfBirth, CURDATE()) BETWEEN 30 AND 40 THEN '30-40'
        WHEN TIMESTAMPDIFF(YEAR, c.DateOfBirth, CURDATE()) BETWEEN 41 AND 50 THEN '41-50'
        WHEN TIMESTAMPDIFF(YEAR, c.DateOfBirth, CURDATE()) BETWEEN 51 AND 60 THEN '51-60'
        ELSE 'Over 60'
    END AS AgeGroup,
    COUNT(DISTINCT c.ClientID) AS NumberOfClients,
    AVG(p.TotalValue) AS AveragePortfolioValue,
    SUM(p.TotalValue) AS TotalValue
FROM
    Client c
JOIN
    Portfolio p ON c.ClientID = p.ClientID
GROUP BY
    AgeGroup
ORDER BY
    AgeGroup;
```

### Correlation between investment timing and performance
```sql
SELECT
    YEAR(i.PurchaseDate) AS Year,
    MONTH(i.PurchaseDate) AS Month,
    COUNT(i.InvestmentID) AS NumberOfInvestments,
    SUM(i.AmountInvested) AS TotalInvested,
    SUM(i.CurrentValue) AS CurrentValue,
    ROUND((SUM(i.CurrentValue) - SUM(i.AmountInvested)) / SUM(i.AmountInvested) * 100, 2) AS ReturnPercentage
FROM
    Investment i
WHERE
    i.PurchaseDate IS NOT NULL
GROUP BY
    YEAR(i.PurchaseDate), MONTH(i.PurchaseDate)
ORDER BY
    Year, Month;
```

---

## 4. Normal Form Testing
- **1NF**: Ensures atomic values (no repeating columns).
- **2NF**: Eliminates partial dependencies.
- **3NF**: Eliminates transitive dependencies.

---

## 5. Stress Testing
- **Load Testing**: Evaluated query performance under heavy loads.
- **Index Optimization**: Applied indexes for efficiency.
- **Concurrency Testing**: Ensured multiple users can retrieve data without bottlenecks.

---

## 6. Problem Statements

1. Identify top-performing investments across portfolios.
2. Identify clients whose investments don't align with their risk profile.
3. Analyze best and worst-performing stocks in portfolios.
4. Evaluate portfolio diversification across investment types.
5. Study investment strategies across age groups.
6. Find correlation between investment timing and performance.
7. Assess buy/sell transactions’ impact on portfolio performance.
8. Analyze market trends for different investment types.
9. Identify most popular mutual funds by client risk profile.

---

## 7. Managerial Insights

### 1. Identifying Top-Performing Investments
- Prioritize high-return investments for further capital infusion.
- Track trends in top investments to optimize future allocations.
- Focus on consistently top-performing investment types for strategy.

### 2. Aligning Investments with Client Risk Profiles
- Clients misaligned with their risk profile require advisory intervention.
- High-risk clients with low-risk portfolios may be underutilizing opportunities.

### 3. Best and Worst Performing Stocks
- High-return stocks should be expanded in portfolios.
- Persistently negative return stocks require review or divestment.
- Analyze stock popularity vs. returns to identify risky trends.

### 4. Portfolio Diversification Analysis
- Portfolios with <3 investment types indicate poor diversification.
- Overexposure to a single type increases risk exposure.

### 5. Investment Strategy by Age Group
- Under 30 investors favor high-risk investments.
- 51-60 age group prioritizes capital preservation.

### 6. Investment Timing and Performance
- Q1 & Q4 investments show better returns.
- High investment volume but low returns indicate poor timing.

### 7. Impact of Buy and Sell Transactions on Portfolio Performance
- High-profit sell transactions reflect strong timing strategies.
- Negative returns on buys suggest poor stock screening.

### 8. Market Trends Analysis Over Time
- Stable investments are safer, while volatile investments show speculative trends.
- Market behavior should guide predictive investment insights.

### 9. Popular Mutual Funds Among Risk Profiles
- Low-risk clients prefer stable funds.
- High-risk clients seek growth-oriented mutual funds.

### 10. High-Risk Exposure in Portfolios
- Portfolios overly reliant on high-risk assets are volatile.
- Diversification into medium and low-risk assets enhances stability.

### 11. Client Investment Behavior Analysis
- Clients with erratic investments need more advisory attention.
- Investment behavior segmentation helps optimize advisory services.

### 12. Sector-Specific Investment Performance
- Consistently high-performing sectors should be targeted.
- Underperforming sectors need exit strategies or restructuring.

### 13. Investment Holding Period vs. Return Analysis
- Long-term investments (>5 years) yield better returns.
- Short-term holdings show higher volatility.

### 14. Correlation Between Investment Type and Client Income Level
- High-income clients favor diversified investments.
- Lower-income clients prefer fixed-income instruments.

### 15. Stock Price Volatility Impact on Investment Behavior
- Clients reduce investments in highly volatile stocks.
- Volatility-adjusted returns should be introduced for better decision-making.

---

## Conclusion
This **Investment Portfolio Database** provides valuable insights for **investment strategy**, **portfolio optimization**, and **financial decision-making**. The structured database supports efficient tracking, ensuring **data integrity**, **scalability**, and **actionable financial insights** for better portfolio management.

---



