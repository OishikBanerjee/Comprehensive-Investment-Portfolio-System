-- Step 1: Create the database
DROP DATABASE IF EXISTS InvestmentPortfolioDB;
CREATE DATABASE InvestmentPortfolioDB;

-- Step 2: Use the created database
USE InvestmentPortfolioDB;

-- Create Client Table
CREATE TABLE Client (
    ClientID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    ContactDetails VARCHAR(100) NOT NULL,
    RiskProfile ENUM('Low', 'Medium', 'High') NOT NULL,
    DateOfBirth DATE NOT NULL
);

-- Inserting Clients
INSERT INTO Client (ClientID, Name, ContactDetails, RiskProfile, DateOfBirth) VALUES
(1, 'Ravi Sharma', 'ravi.sharma@mail.com', 'Medium', '1980-05-15'),
(2, 'Priya Verma', 'priya.verma@mail.com', 'High', '1985-03-20'),
(3, 'Amit Gupta', 'amit.gupta@mail.com', 'Low', '1992-07-30'),
(4, 'Neha Desai', 'neha.desai@mail.com', 'Medium', '1990-02-10'),
(5, 'Karan Patel', 'karan.patel@mail.com', 'High', '1988-11-05'),
(6, 'Sonia Rai', 'sonia.rai@mail.com', 'Low', '1984-09-14'),
(7, 'Rajeev Kumar', 'rajeev.kumar@mail.com', 'Medium', '1995-06-22'),
(8, 'Simran Kapoor', 'simran.kapoor@mail.com', 'High', '1991-04-11'),
(9, 'Vikram Singh', 'vikram.singh@mail.com', 'Low', '1987-01-19'),
(10, 'Shreya Mehta', 'shreya.mehta@mail.com', 'Medium', '1994-10-03'),
(11, 'Manoj Tiwari', 'manoj.tiwari@mail.com', 'High', '1983-12-12'),
(12, 'Kavita Joshi', 'kavita.joshi@mail.com', 'Low', '1990-08-25'),
(13, 'Sandeep Yadav', 'sandeep.yadav@mail.com', 'Medium', '1989-07-13'),
(14, 'Arun Malhotra', 'arun.malhotra@mail.com', 'High', '1982-11-02'),
(15, 'Rashmi Agarwal', 'rashmi.agarwal@mail.com', 'Low', '1992-01-20'),
(16, 'Ayesha Khan', 'ayesha.khan@mail.com', 'Medium', '1996-03-15'),
(17, 'Sunil Rajput', 'sunil.rajput@mail.com', 'High', '1986-05-10'),
(18, 'Preeti Reddy', 'preeti.reddy@mail.com', 'Low', '1993-02-28'),
(19, 'Deepak Chauhan', 'deepak.chauhan@mail.com', 'Medium', '1994-08-18'),
(20, 'Pooja Soni', 'pooja.soni@mail.com', 'High', '1990-04-12'),
(21, 'Vikas Bansal', 'vikas.bansal@mail.com', 'Low', '1987-09-22'),
(22, 'Neeraj Kapoor', 'neeraj.kapoor@mail.com', 'Medium', '1991-01-11'),
(23, 'Nisha Rawat', 'nisha.rawat@mail.com', 'High', '1985-12-30'),
(24, 'Sanjay Gupta', 'sanjay.gupta@mail.com', 'Low', '1988-06-05'),
(25, 'Amit Agarwal', 'amit.agarwal@mail.com', 'Medium', '1992-09-15'),
(26, 'Rekha Singh', 'rekha.singh@mail.com', 'High', '1986-10-07'),
(27, 'Bharat Patil', 'bharat.patil@mail.com', 'Low', '1993-03-25'),
(28, 'Tarun Verma', 'tarun.verma@mail.com', 'Medium', '1995-07-16'),
(29, 'Suman Bedi', 'suman.bedi@mail.com', 'High', '1989-11-22'),
(30, 'Ashok Joshi', 'ashok.joshi@mail.com', 'Low', '1991-12-14');

-- Create Portfolio Table
CREATE TABLE Portfolio (
    PortfolioID INT PRIMARY KEY NOT NULL,
    ClientID INT NOT NULL,
    PortfolioType ENUM('Aggressive', 'Conservative', 'Balanced') NOT NULL,
    TotalValue DECIMAL(15, 2) NOT NULL,
    DateCreated DATE NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID) ON DELETE CASCADE
);

-- Inserting Portfolios
INSERT INTO Portfolio (PortfolioID, ClientID, PortfolioType, TotalValue, DateCreated) VALUES
(1, 1, 'Balanced', 500000, '2020-06-15'),
(2, 2, 'Aggressive', 1500000, '2021-05-10'),
(3, 3, 'Conservative', 300000, '2019-01-20'),
(4, 4, 'Balanced', 700000, '2020-11-05'),
(5, 5, 'Aggressive', 2000000, '2021-02-25'),
(6, 6, 'Conservative', 400000, '2021-04-12'),
(7, 7, 'Balanced', 600000, '2020-08-18'),
(8, 8, 'Aggressive', 1000000, '2021-09-10'),
(9, 9, 'Conservative', 250000, '2019-12-01'),
(10, 10, 'Balanced', 800000, '2020-03-20'),
(11, 11, 'Aggressive', 1200000, '2021-06-15'),
(12, 12, 'Conservative', 350000, '2019-02-19'),
(13, 13, 'Balanced', 750000, '2020-07-25'),
(14, 14, 'Aggressive', 1800000, '2021-01-05'),
(15, 15, 'Conservative', 450000, '2020-11-20'),
(16, 16, 'Balanced', 550000, '2020-04-10'),
(17, 17, 'Aggressive', 2500000, '2021-03-22'),
(18, 18, 'Conservative', 300000, '2019-11-30'),
(19, 19, 'Balanced', 650000, '2020-09-15'),
(20, 20, 'Aggressive', 1500000, '2021-07-08'),
(21, 21, 'Conservative', 350000, '2020-01-15'),
(22, 22, 'Balanced', 600000, '2020-08-01'),
(23, 23, 'Aggressive', 2200000, '2021-05-25'),
(24, 24, 'Conservative', 400000, '2019-04-10'),
(25, 25, 'Balanced', 700000, '2020-06-30'),
(26, 26, 'Aggressive', 2500000, '2021-10-10'),
(27, 27, 'Conservative', 380000, '2020-02-15'),
(28, 28, 'Balanced', 640000, '2020-07-05'),
(29, 29, 'Aggressive', 1500000, '2021-06-20'),
(30, 30, 'Conservative', 350000, '2019-12-25');

-- Create InvestmentType Table (Fixed repetitive values)
CREATE TABLE InvestmentType (
    InvestmentTypeID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    RiskLevel ENUM('Low', 'Medium', 'High') NOT NULL
);

-- Insert unique investment types
INSERT INTO InvestmentType (InvestmentTypeID, Name, RiskLevel) VALUES
(1, 'Stock', 'High'),
(2, 'Mutual Fund', 'Medium'),
(3, 'Bond', 'Low'),
(4, 'ETF', 'Medium'),
(5, 'Real Estate', 'High'),
(6, 'Fixed Deposit', 'Low'),
(7, 'Government Securities', 'Low'),
(8, 'Corporate Bonds', 'Medium'),
(9, 'International Stocks', 'High'),
(10, 'Gold', 'Medium');

-- Create Investment Table
CREATE TABLE Investment (
    InvestmentID INT PRIMARY KEY NOT NULL,
    InvestmentTypeID INT NOT NULL,
    PortfolioID INT NOT NULL,
    AmountInvested DECIMAL(15, 2) NOT NULL,
    CurrentValue DECIMAL(15, 2) NOT NULL,
    PurchaseDate DATE NOT NULL,
    SaleDate DATE NULL,
    FOREIGN KEY (InvestmentTypeID) REFERENCES InvestmentType(InvestmentTypeID) ON DELETE RESTRICT,
    FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID) ON DELETE CASCADE
);

-- Inserting Investments (adjusted to use valid InvestmentTypeIDs)
INSERT INTO Investment (InvestmentID, InvestmentTypeID, PortfolioID, AmountInvested, CurrentValue, PurchaseDate, SaleDate) VALUES
(1, 1, 1, 200000, 250000, '2020-07-01', NULL),
(2, 2, 2, 500000, 600000, '2021-04-15', NULL),
(3, 3, 3, 150000, 160000, '2019-08-10', '2020-02-25'),
(4, 1, 4, 300000, 350000, '2020-09-12', NULL),
(5, 2, 5, 700000, 800000, '2021-03-20', NULL),
(6, 3, 6, 200000, 210000, '2020-01-11', NULL),
(7, 4, 7, 250000, 280000, '2020-06-15', '2021-05-20'),
(8, 5, 8, 400000, 420000, '2021-07-05', NULL),
(9, 6, 9, 100000, 120000, '2019-03-20', '2020-06-10'),
(10, 7, 10, 150000, 160000, '2020-11-01', NULL),
(11, 8, 11, 350000, 370000, '2021-05-25', NULL),
(12, 9, 12, 100000, 110000, '2019-09-15', '2020-03-25'),
(13, 10, 13, 200000, 240000, '2020-08-30', NULL),
(14, 1, 14, 550000, 600000, '2021-10-10', NULL),
(15, 2, 15, 120000, 125000, '2020-01-25', '2020-04-18'),
(16, 3, 16, 300000, 320000, '2020-12-15', NULL),
(17, 4, 17, 800000, 900000, '2021-02-01', NULL),
(18, 5, 18, 150000, 160000, '2019-11-30', '2020-04-10'),
(19, 6, 19, 350000, 370000, '2020-09-10', NULL),
(20, 7, 20, 450000, 500000, '2021-07-01', NULL),
(21, 8, 21, 150000, 160000, '2019-10-10', '2020-05-12'),
(22, 9, 22, 500000, 550000, '2020-06-01', NULL),
(23, 10, 23, 700000, 750000, '2021-04-20', NULL),
(24, 1, 24, 200000, 220000, '2019-01-05', '2020-07-10'),
(25, 2, 25, 150000, 160000, '2020-12-25', NULL),
(26, 3, 26, 450000, 490000, '2021-03-01', NULL),
(27, 4, 27, 250000, 260000, '2020-10-15', NULL),
(28, 5, 28, 500000, 550000, '2020-09-05', NULL),
(29, 6, 29, 600000, 650000, '2021-02-15', NULL),
(30, 7, 30, 200000, 220000, '2019-04-25', '2020-08-20');

-- Create Stock Table
CREATE TABLE Stock (
    StockID INT PRIMARY KEY NOT NULL,
    StockSymbol VARCHAR(25) NOT NULL,
    CurrentPrice DECIMAL(10, 2) NOT NULL,
    QuantityOwned INT NOT NULL,
    PurchasePrice DECIMAL(10, 2) NOT NULL,
    PortfolioID INT NOT NULL,
    FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID) ON DELETE CASCADE
);

-- Inserting Stocks
INSERT INTO Stock (StockID, StockSymbol, CurrentPrice, QuantityOwned, PurchasePrice, PortfolioID) VALUES
(1, 'RELIANCE', 2300.50, 50, 2100.00, 1),
(2, 'TCS', 3300.75, 40, 3100.00, 2),
(3, 'INFY', 1500.30, 60, 1400.00, 3),
(4, 'HDFC', 2200.25, 35, 2100.00, 4),
(5, 'ICICI', 800.10, 25, 750.00, 5),
(6, 'SBIN', 400.75, 30, 350.00, 6),
(7, 'HINDUNILVR', 2400.00, 50, 2300.00, 7),
(8, 'BHARTIARTL', 550.40, 45, 500.00, 8),
(9, 'MARUTI', 9500.50, 20, 9200.00, 9),
(10, 'TATASTEEL', 1100.25, 30, 1000.00, 10),
(11, 'ASIANPAINT', 3000.75, 40, 2900.00, 11),
(12, 'LUPIN', 1000.50, 60, 950.00, 12),
(13, 'M&M', 800.30, 50, 750.00, 13),
(14, 'ITC', 250.10, 30, 240.00, 14),
(15, 'HDFC_BANK', 1550.40, 40, 1500.00, 15),
(16, 'KOTAKBANK', 1800.00, 45, 1700.00, 16),
(17, 'AXISBANK', 850.50, 35, 800.00, 17),
(18, 'BAJFINANCE', 7000.10, 25, 6700.00, 18),
(19, 'WIPRO', 600.25, 40, 580.00, 19),
(20, 'TATAMOTORS', 450.10, 60, 400.00, 20),
(21, 'ADANIGREEN', 1200.50, 50, 1100.00, 21),
(22, 'SUNPHARMA', 600.00, 30, 570.00, 22),
(23, 'MARUTI', 9500.50, 40, 9200.00, 23),
(24, 'TECHMAHINDRA', 1500.75, 25, 1450.00, 24),
(25, 'BAJAJ_AUTO', 3500.50, 35, 3400.00, 25),
(26, 'HDFCBANK', 1600.00, 45, 1550.00, 26),
(27, 'RELIANCE', 2300.50, 50, 2200.00, 27),
(28, 'MOTHERSUN', 600.00, 60, 590.00, 28),
(29, 'HINDALCO', 500.25, 40, 450.00, 29),
(30, 'NTPC', 120.10, 50, 110.00, 30);

-- Create MutualFund Table
CREATE TABLE MutualFund (
    MutualFundID INT PRIMARY KEY NOT NULL,
    FundName VARCHAR(100) NOT NULL,
    CurrentValue DECIMAL(15, 2) NOT NULL,
    SharesOwned INT NOT NULL,
    PortfolioID INT NOT NULL,
    FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID) ON DELETE CASCADE
);

-- Inserting Mutual Funds
INSERT INTO MutualFund (MutualFundID, FundName, CurrentValue, SharesOwned, PortfolioID) VALUES
(1, 'HDFC Equity Fund', 100000.00, 200, 1),
(2, 'ICICI Prudential Bluechip Fund', 200000.00, 150, 2),
(3, 'SBI Mutual Fund', 50000.00, 300, 3),
(4, 'Franklin Templeton', 120000.00, 180, 4),
(5, 'Aditya Birla Sun Life Fund', 150000.00, 160, 5),
(6, 'Mirae Asset', 80000.00, 100, 6),
(7, 'Reliance Mutual Fund', 300000.00, 250, 7),
(8, 'Axis Mutual Fund', 200000.00, 200, 8),
(9, 'Kotak Mahindra', 70000.00, 120, 9),
(10, 'L&T Mutual Fund', 350000.00, 180, 10),
(11, 'UTI Mutual Fund', 250000.00, 200, 11),
(12, 'Motilal Oswal', 120000.00, 150, 12),
(13, 'HDFC Top 200', 100000.00, 180, 13),
(14, 'Nippon India Mutual Fund', 200000.00, 160, 14),
(15, 'DSP BlackRock', 150000.00, 200, 15),
(16, 'Birla Mutual Fund', 220000.00, 250, 16),
(17, 'Tata Mutual Fund', 130000.00, 170, 17),
(18, 'IDFC Mutual Fund', 180000.00, 220, 18),
(19, 'Canara Robeco', 70000.00, 120, 19),
(20, 'Franklin India', 150000.00, 200, 20),
(21, 'Invesco Mutual Fund', 250000.00, 180, 21),
(22, 'Sundaram Mutual Fund', 300000.00, 220, 22),
(23, 'LIC Mutual Fund', 150000.00, 150, 23),
(24, 'Kotak Bond Fund', 80000.00, 100, 24),
(25, 'ICICI Prudential', 50000.00, 130, 25),
(26, 'Reliance Liquid Fund', 120000.00, 150, 26),
(27, 'IDFC Equity Fund', 100000.00, 200, 27),
(28, 'HDFC Balanced Fund', 70000.00, 120, 28),
(29, 'DSP Equity Fund', 150000.00, 220, 29),
(30, 'L&T Debt Fund', 250000.00, 180, 30);

-- Create Transaction Table
CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY NOT NULL,
    TransactionType ENUM('Buy', 'Sell') NOT NULL,
    TransactionDate DATE NOT NULL,
    Amount DECIMAL(15, 2) NOT NULL,
    InvestmentID INT NOT NULL,
    FOREIGN KEY (InvestmentID) REFERENCES Investment(InvestmentID) ON DELETE CASCADE
);

-- Inserting Transactions
INSERT INTO Transaction (TransactionID, TransactionType, TransactionDate, Amount, InvestmentID) VALUES
(1, 'Buy', '2020-07-15', 50000, 1),
(2, 'Sell', '2020-08-10', 30000, 2),
(3, 'Buy', '2020-09-05', 40000, 3),
(4, 'Sell', '2021-01-10', 25000, 4),
(5, 'Buy', '2021-02-20', 60000, 5),
(6, 'Sell', '2021-05-15', 20000, 6),
(7, 'Buy', '2021-07-10', 70000, 7),
(8, 'Sell', '2020-08-25', 35000, 8),
(9, 'Buy', '2021-01-15', 15000, 9),
(10, 'Sell', '2021-04-05', 45000, 10),
(11, 'Buy', '2021-03-15', 55000, 11),
(12, 'Sell', '2021-06-20', 22000, 12),
(13, 'Buy', '2021-02-05', 30000, 13),
(14, 'Sell', '2021-05-10', 10000, 14),
(15, 'Buy', '2021-06-25', 75000, 15),
(16, 'Sell', '2021-04-18', 20000, 16),
(17, 'Buy', '2021-07-12', 100000, 17),
(18, 'Sell', '2021-06-10', 15000, 18),
(19, 'Buy', '2020-10-05', 20000, 19),
(20, 'Sell', '2020-12-01', 35000, 20),
(21, 'Buy', '2021-03-20', 40000, 21),
(22, 'Sell', '2021-05-30', 25000, 22),
(23, 'Buy', '2020-11-20', 30000, 23),
(24, 'Sell', '2020-09-15', 18000, 24),
(25, 'Buy', '2021-02-10', 60000, 25),
(26, 'Sell', '2020-08-30', 12000, 26),
(27, 'Buy', '2021-03-05', 45000, 27),
(28, 'Sell', '2021-01-20', 40000, 28),
(29, 'Buy', '2021-06-18', 25000, 29),
(30, 'Sell', '2021-04-25', 15000, 30);

-- Create MarketData Table
CREATE TABLE MarketData (
    MarketDataID INT PRIMARY KEY NOT NULL,
    InvestmentTypeID INT NOT NULL,
    Date DATE NOT NULL,
    OpeningPrice DECIMAL(10, 2) NOT NULL,
    ClosingPrice DECIMAL(10, 2) NOT NULL,
    HighestPrice DECIMAL(10, 2) NOT NULL,
    LowestPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (InvestmentTypeID) REFERENCES InvestmentType(InvestmentTypeID) ON DELETE RESTRICT
);

-- Inserting Market Data Entries (adjusted to use valid InvestmentTypeIDs)
INSERT INTO MarketData (MarketDataID, InvestmentTypeID, Date, OpeningPrice, ClosingPrice, HighestPrice, LowestPrice) VALUES
(1, 1, '2020-07-01', 2200.00, 2300.00, 2350.00, 2150.00),
(2, 2, '2020-08-01', 1200.00, 1300.00, 1350.00, 1150.00),
(3, 3, '2020-09-01', 1400.00, 1500.00, 1550.00, 1350.00),
(4, 4, '2020-10-01', 2100.00, 2200.00, 2250.00, 2050.00),
(5, 5, '2020-11-01', 750.00, 800.00, 850.00, 720.00),
(6, 6, '2020-12-01', 350.00, 400.00, 420.00, 340.00),
(7, 7, '2021-01-01', 2300.00, 2400.00, 2450.00, 2200.00),
(8, 8, '2021-02-01', 500.00, 550.00, 580.00, 490.00),
(9, 9, '2021-03-01', 9200.00, 9500.00, 9600.00, 9100.00),
(10, 10, '2021-04-01', 1000.00, 1100.00, 1150.00, 950.00),
(11, 1, '2021-05-01', 2900.00, 3000.00, 3050.00, 2850.00),
(12, 2, '2021-06-01', 950.00, 1000.00, 1050.00, 920.00),
(13, 3, '2021-07-01', 750.00, 800.00, 820.00, 730.00),
(14, 4, '2021-08-01', 240.00, 250.00, 260.00, 230.00),
(15, 5, '2021-09-01', 1500.00, 1600.00, 1650.00, 1450.00),
(16, 6, '2021-10-01', 1700.00, 1800.00, 1850.00, 1650.00),
(17, 7, '2021-11-01', 800.00, 850.00, 880.00, 790.00),
(18, 8, '2021-12-01', 6700.00, 7000.00, 7200.00, 6600.00),
(19, 9, '2022-01-01', 580.00, 600.00, 620.00, 570.00),
(20, 10, '2022-02-01', 400.00, 450.00, 480.00, 380.00),
(21, 1, '2022-03-01', 1100.00, 1200.00, 1250.00, 1080.00),
(22, 2, '2022-04-01', 570.00, 600.00, 630.00, 560.00),
(23, 3, '2022-05-01', 9200.00, 9500.00, 9600.00, 9100.00),
(24, 4, '2022-06-01', 950.00, 1000.00, 1050.00, 920.00),
(25, 5, '2022-07-01', 3400.00, 3500.00, 3550.00, 3300.00),
(26, 6, '2022-08-01', 1500.00, 1600.00, 1650.00, 1450.00),
(27, 7, '2022-09-01', 2200.00, 2300.00, 2350.00, 2150.00),
(28, 8, '2022-10-01', 3400.00, 3500.00, 3550.00, 3300.00),
(29, 9, '2022-11-01', 1300.00, 1400.00, 1450.00, 1200.00),
(30, 10, '2022-12-01', 1600.00, 1700.00, 1750.00, 1550.00);

-- Add index for improved performance
CREATE INDEX idx_client_riskprofile ON Client(RiskProfile);
CREATE INDEX idx_portfolio_client ON Portfolio(ClientID);
CREATE INDEX idx_portfolio_type ON Portfolio(PortfolioType);
CREATE INDEX idx_investment_portfolio ON Investment(PortfolioID);
CREATE INDEX idx_investment_type ON Investment(InvestmentTypeID);
CREATE INDEX idx_transaction_investment ON Transaction(InvestmentID);
CREATE INDEX idx_marketdata_type ON MarketData(InvestmentTypeID);
CREATE INDEX idx_marketdata_date ON MarketData(Date);

-- Create view to see client portfolios with their total values
CREATE VIEW ClientPortfolioSummary AS
SELECT 
    c.ClientID,
    c.Name AS ClientName,
    c.RiskProfile,
    p.PortfolioID,
    p.PortfolioType,
    p.TotalValue,
    p.DateCreated
FROM 
    Client c
JOIN 
    Portfolio p ON c.ClientID = p.ClientID;

-- Create view to calculate investment returns
CREATE VIEW InvestmentReturns AS
SELECT
    i.InvestmentID,
    i.PortfolioID,
    it.Name AS InvestmentType,
    i.AmountInvested,
    i.CurrentValue,
    (i.CurrentValue - i.AmountInvested) AS AbsoluteReturn,
    ((i.CurrentValue - i.AmountInvested) / i.AmountInvested * 100) AS PercentageReturn,
    i.PurchaseDate,
    i.SaleDate
FROM
    Investment i
JOIN
    InvestmentType it ON i.InvestmentTypeID = it.InvestmentTypeID;

-- Create stored procedure to get client portfolio details
DELIMITER //
CREATE PROCEDURE GetClientPortfolioDetails(IN clientID INT)
BEGIN
    -- Client basic information
    SELECT * FROM Client WHERE ClientID = clientID;
    
    -- Portfolio summary
    SELECT
        p.PortfolioID,
        p.PortfolioType,
        p.TotalValue,
        p.DateCreated
    FROM 
        Portfolio p
    WHERE 
        p.ClientID = clientID;
    
    -- Investment details
    SELECT 
        i.InvestmentID,
        it.Name AS InvestmentType,
        it.RiskLevel,
        i.AmountInvested,
        i.CurrentValue,
        (i.CurrentValue - i.AmountInvested) AS Profit,
        ((i.CurrentValue - i.AmountInvested) / i.AmountInvested * 100) AS ROI,
        i.PurchaseDate,
        i.SaleDate
    FROM 
        Investment i
    JOIN 
        InvestmentType it ON i.InvestmentTypeID = it.InvestmentTypeID
    JOIN 
        Portfolio p ON i.PortfolioID = p.PortfolioID
    WHERE 
        p.ClientID = clientID;
    
    -- Stock details
    SELECT 
        s.StockID,
        s.StockSymbol,
        s.CurrentPrice,
        s.QuantityOwned,
        s.PurchasePrice,
        (s.CurrentPrice * s.QuantityOwned) AS CurrentValue,
        (s.CurrentPrice - s.PurchasePrice) * s.QuantityOwned AS ProfitLoss
    FROM 
        Stock s
    JOIN 
        Portfolio p ON s.PortfolioID = p.PortfolioID
    WHERE 
        p.ClientID = clientID;
    
    -- Mutual fund details
    SELECT 
        mf.MutualFundID,
        mf.FundName,
        mf.CurrentValue,
        mf.SharesOwned
    FROM 
        MutualFund mf
    JOIN 
        Portfolio p ON mf.PortfolioID = p.PortfolioID
    WHERE 
        p.ClientID = clientID;
END //
DELIMITER ;

-- Create stored procedure to get investment performance
DELIMITER //
CREATE PROCEDURE GetInvestmentPerformance(IN portfolioID INT)
BEGIN
    SELECT 
        i.InvestmentID,
        it.Name AS InvestmentType,
        it.RiskLevel,
        i.AmountInvested,
        i.CurrentValue,
        (i.CurrentValue - i.AmountInvested) AS AbsoluteReturn,
        ((i.CurrentValue - i.AmountInvested) / i.AmountInvested * 100) AS PercentageReturn,
        DATEDIFF(IFNULL(i.SaleDate, CURDATE()), i.PurchaseDate) AS DaysHeld
    FROM 
        Investment i
    JOIN 
        InvestmentType it ON i.InvestmentTypeID = it.InvestmentTypeID
    WHERE 
        i.PortfolioID = portfolioID
    ORDER BY 
        PercentageReturn DESC;
END //
DELIMITER ;

-- Create stored procedure to get portfolio risk analysis
DELIMITER //
CREATE PROCEDURE GetPortfolioRiskAnalysis(IN clientID INT)
BEGIN
    SELECT 
        c.ClientID,
        c.Name AS ClientName,
        c.RiskProfile AS ClientRiskProfile,
        p.PortfolioID,
        p.PortfolioType,
        SUM(CASE WHEN it.RiskLevel = 'Low' THEN i.CurrentValue ELSE 0 END) AS LowRiskValue,
        SUM(CASE WHEN it.RiskLevel = 'Medium' THEN i.CurrentValue ELSE 0 END) AS MediumRiskValue,
        SUM(CASE WHEN it.RiskLevel = 'High' THEN i.CurrentValue ELSE 0 END) AS HighRiskValue,
        SUM(i.CurrentValue) AS TotalValue,
        (SUM(CASE WHEN it.RiskLevel = 'Low' THEN i.CurrentValue ELSE 0 END) / SUM(i.CurrentValue) * 100) AS LowRiskPercentage,
        (SUM(CASE WHEN it.RiskLevel = 'Medium' THEN i.CurrentValue ELSE 0 END) / SUM(i.CurrentValue) * 100) AS MediumRiskPercentage,
        (SUM(CASE WHEN it.RiskLevel = 'High' THEN i.CurrentValue ELSE 0 END) / SUM(i.CurrentValue) * 100) AS HighRiskPercentage
    FROM 
        Client c
    JOIN 
        Portfolio p ON c.ClientID = p.ClientID
    JOIN 
        Investment i ON p.PortfolioID = i.PortfolioID
    JOIN 
        InvestmentType it ON i.InvestmentTypeID = it.InvestmentTypeID
    WHERE 
        c.ClientID = clientID
    GROUP BY 
        c.ClientID, c.Name, c.RiskProfile, p.PortfolioID, p.PortfolioType;
END //
DELIMITER ;

-- Create a trigger to update Portfolio TotalValue when Investment is updated
DELIMITER //
CREATE TRIGGER update_portfolio_value_after_investment_update
AFTER UPDATE ON Investment
FOR EACH ROW
BEGIN
    UPDATE Portfolio
    SET TotalValue = (
        SELECT SUM(CurrentValue)
        FROM Investment
        WHERE PortfolioID = NEW.PortfolioID
    )
    WHERE PortfolioID = NEW.PortfolioID;
END//
DELIMITER ;

-- Create a trigger to update Portfolio TotalValue when Investment is inserted
DELIMITER //
CREATE TRIGGER update_portfolio_value_after_investment_insert
AFTER INSERT ON Investment
FOR EACH ROW
BEGIN
    UPDATE Portfolio
    SET TotalValue = (
        SELECT SUM(CurrentValue)
        FROM Investment
        WHERE PortfolioID = NEW.PortfolioID
    )
    WHERE PortfolioID = NEW.PortfolioID;
END//
DELIMITER ;

-- Create a trigger to update Portfolio TotalValue when Investment is deleted
DELIMITER //
CREATE TRIGGER update_portfolio_value_after_investment_delete
AFTER DELETE ON Investment
FOR EACH ROW
BEGIN
    UPDATE Portfolio
    SET TotalValue = (
        SELECT COALESCE(SUM(CurrentValue), 0)
        FROM Investment
        WHERE PortfolioID = OLD.PortfolioID
    )
    WHERE PortfolioID = OLD.PortfolioID;
END//
DELIMITER ;

-- Create a trigger to check if the client's risk profile matches the portfolio type
DELIMITER //
CREATE TRIGGER check_client_risk_profile_before_portfolio_insert
BEFORE INSERT ON Portfolio
FOR EACH ROW
BEGIN
    DECLARE client_risk VARCHAR(10);
    
    SELECT RiskProfile INTO client_risk
    FROM Client
    WHERE ClientID = NEW.ClientID;
    
    IF (client_risk = 'Low' AND NEW.PortfolioType = 'Aggressive') OR
       (client_risk = 'High' AND NEW.PortfolioType = 'Conservative') THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Portfolio type does not match client risk profile';
    END IF;
END//
DELIMITER ;





-- QUERYING


-- Problem Statement: Identify the top performing investments across all portfolios.

SELECT 
    i.InvestmentID,
    it.Name AS InvestmentType,
    i.AmountInvested,
    i.CurrentValue,
    (i.CurrentValue - i.AmountInvested) AS AbsoluteReturn,
    ROUND(((i.CurrentValue - i.AmountInvested) / i.AmountInvested * 100), 2) AS ReturnPercentage,
    DATEDIFF(IFNULL(i.SaleDate, CURDATE()), i.PurchaseDate) AS DaysHeld,
    ROUND(((i.CurrentValue - i.AmountInvested) / i.AmountInvested * 100) / 
           (DATEDIFF(IFNULL(i.SaleDate, CURDATE()), i.PurchaseDate) / 365), 2) AS AnnualizedReturn
FROM 
    Investment i
JOIN 
    InvestmentType it ON i.InvestmentTypeID = it.InvestmentTypeID
WHERE 
    i.CurrentValue > i.AmountInvested
ORDER BY 
    ReturnPercentage DESC
LIMIT 15;

-- Problem Statement: Identify clients whose investment choices don't align with their risk profile.
SELECT 
    c.ClientID,
    c.Name,
    c.RiskProfile AS ClientRiskProfile,
    p.PortfolioID,
    p.PortfolioType,
    SUM(CASE WHEN it.RiskLevel = 'High' THEN i.CurrentValue ELSE 0 END) AS HighRiskInvestments,
    SUM(i.CurrentValue) AS TotalInvestments,
    ROUND((SUM(CASE WHEN it.RiskLevel = 'High' THEN i.CurrentValue ELSE 0 END) / 
           SUM(i.CurrentValue) * 100), 2) AS HighRiskPercentage
FROM 
    Client c
JOIN 
    Portfolio p ON c.ClientID = p.ClientID
JOIN 
    Investment i ON p.PortfolioID = i.PortfolioID
JOIN 
    InvestmentType it ON i.InvestmentTypeID = it.InvestmentTypeID
GROUP BY 
    c.ClientID, c.Name, c.RiskProfile, p.PortfolioID, p.PortfolioType
HAVING 
    (c.RiskProfile = 'Low' AND HighRiskPercentage > 30) OR
    (c.RiskProfile = 'Medium' AND HighRiskPercentage > 60) OR
    (c.RiskProfile = 'High' AND HighRiskPercentage < 40)
ORDER BY 
    ABS(CASE 
        WHEN c.RiskProfile = 'Low' THEN HighRiskPercentage - 20
        WHEN c.RiskProfile = 'Medium' THEN HighRiskPercentage - 50
        WHEN c.RiskProfile = 'High' THEN HighRiskPercentage - 70
    END) DESC;
    
-- Problem Statement: Analyze which stocks are performing best and worst in the portfolios.

SELECT 
    s.StockSymbol,
    COUNT(s.StockID) AS OccurrenceCount,
    AVG(s.CurrentPrice) AS AverageCurrentPrice,
    AVG(s.PurchasePrice) AS AveragePurchasePrice,
    ROUND(AVG((s.CurrentPrice - s.PurchasePrice) / s.PurchasePrice * 100), 2) AS AvgReturnPercentage,
    SUM(s.QuantityOwned) AS TotalShares,
    SUM(s.CurrentPrice * s.QuantityOwned) AS TotalValue
FROM 
    Stock s
GROUP BY 
    s.StockSymbol
ORDER BY 
    AvgReturnPercentage DESC;
    
-- Problem Statement: Evaluate how well portfolios are diversified across different investment types.
SELECT 
    p.PortfolioID,
    c.Name AS ClientName,
    p.PortfolioType,
    COUNT(DISTINCT i.InvestmentTypeID) AS NumberOfInvestmentTypes,
    GROUP_CONCAT(DISTINCT it.Name ORDER BY it.Name) AS InvestmentTypes,
    ROUND(MAX(TypePercentage), 2) AS HighestAllocationPercentage
FROM 
    Portfolio p
JOIN 
    Client c ON p.ClientID = c.ClientID
JOIN 
    Investment i ON p.PortfolioID = i.PortfolioID
JOIN 
    InvestmentType it ON i.InvestmentTypeID = it.InvestmentTypeID
JOIN (
    SELECT 
        i2.PortfolioID,
        i2.InvestmentTypeID,
        SUM(i2.CurrentValue) / p2.TotalValue * 100 AS TypePercentage
    FROM 
        Investment i2
    JOIN 
        Portfolio p2 ON i2.PortfolioID = p2.PortfolioID
    GROUP BY 
        i2.PortfolioID, i2.InvestmentTypeID
) AS TypeSummary ON TypeSummary.PortfolioID = p.PortfolioID
GROUP BY 
    p.PortfolioID, c.Name, p.PortfolioType
ORDER BY 
    NumberOfInvestmentTypes ASC, HighestAllocationPercentage DESC;
    
    
-- Problem Statement: Analyze how investment strategies and performance vary by client age groups.

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
    SUM(p.TotalValue) AS TotalValue,
    AVG(CASE WHEN it.RiskLevel = 'High' THEN i.CurrentValue ELSE 0 END) / AVG(i.CurrentValue) * 100 AS AvgHighRiskPercentage,
    AVG(CASE WHEN it.RiskLevel = 'Medium' THEN i.CurrentValue ELSE 0 END) / AVG(i.CurrentValue) * 100 AS AvgMediumRiskPercentage,
    AVG(CASE WHEN it.RiskLevel = 'Low' THEN i.CurrentValue ELSE 0 END) / AVG(i.CurrentValue) * 100 AS AvgLowRiskPercentage
FROM 
    Client c
JOIN 
    Portfolio p ON c.ClientID = p.ClientID
JOIN 
    Investment i ON p.PortfolioID = i.PortfolioID
JOIN 
    InvestmentType it ON i.InvestmentTypeID = it.InvestmentTypeID
GROUP BY 
    AgeGroup
ORDER BY 
    AgeGroup;
    
-- Problem Statement: Analyze if there's a correlation between investment timing and performance.

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
    
-- Problem Statement: Analyze how buy and sell transactions have impacted portfolio performance.

SELECT 
    t.TransactionType,
    COUNT(t.TransactionID) AS NumberOfTransactions,
    AVG(t.Amount) AS AverageAmount,
    SUM(t.Amount) AS TotalAmount,
    -- For buy transactions: positive impact means investment gained value
    -- For sell transactions: positive impact means sold at a profit
    ROUND(
        SUM(
            CASE 
                WHEN t.TransactionType = 'Buy' THEN i.CurrentValue - t.Amount
                WHEN t.TransactionType = 'Sell' THEN t.Amount - i.AmountInvested
            END
        ), 2) AS ImpactOnPortfolios,
    AVG(
        CASE 
            WHEN t.TransactionType = 'Buy' THEN (i.CurrentValue - t.Amount) / t.Amount * 100
            WHEN t.TransactionType = 'Sell' THEN (t.Amount - i.AmountInvested) / i.AmountInvested * 100
        END
    ) AS AverageReturnPercentage
FROM 
    Transaction t
JOIN 
    Investment i ON t.InvestmentID = i.InvestmentID
GROUP BY 
    t.TransactionType;
    
-- Problem Statement: Analyze market trends over time for different investment types.

SELECT 
    it.Name AS InvestmentType,
    YEAR(md.Date) AS Year,
    QUARTER(md.Date) AS Quarter,
    ROUND(AVG(md.OpeningPrice), 2) AS AvgOpeningPrice,
    ROUND(AVG(md.ClosingPrice), 2) AS AvgClosingPrice,
    ROUND(AVG(md.HighestPrice), 2) AS AvgHighestPrice,
    ROUND(AVG(md.LowestPrice), 2) AS AvgLowestPrice,
    ROUND(AVG((md.ClosingPrice - md.OpeningPrice) / md.OpeningPrice * 100), 2) AS AvgDailyChange
FROM 
    MarketData md
JOIN 
    InvestmentType it ON md.InvestmentTypeID = it.InvestmentTypeID
GROUP BY 
    it.Name, YEAR(md.Date), QUARTER(md.Date)
ORDER BY 
    it.Name, Year, Quarter;
    
-- Problem Statement: Analyze which mutual funds are most popular among clients of different risk profiles.

SELECT 
    c.RiskProfile,
    mf.FundName,
    COUNT(mf.MutualFundID) AS Occurrences,
    SUM(mf.CurrentValue) AS TotalInvestment,
    SUM(mf.SharesOwned) AS TotalShares
FROM 
    Client c
JOIN 
    Portfolio p ON c.ClientID = p.ClientID
JOIN 
    MutualFund mf ON p.PortfolioID = mf.PortfolioID
GROUP BY 
    c.RiskProfile, mf.FundName
ORDER BY 
    c.RiskProfile, TotalInvestment DESC;
    
    
    
    
    
    
    
    
    
-- NORMAL FORM TESTING
-- First Normal Form (1NF) Testing

-- -- Check for tables without primary keys
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_SCHEMA = 'InvestmentPortfolioDB' 
AND TABLE_TYPE = 'BASE TABLE'
AND TABLE_NAME NOT IN (
    SELECT TABLE_NAME 
    FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
    WHERE CONSTRAINT_TYPE = 'PRIMARY KEY' 
    AND TABLE_SCHEMA = 'InvestmentPortfolioDB'
);


-- Second Normal Form (2NF) Testing

-- Check for potential partial dependencies in tables with composite keys
-- This is a conceptual check, as we need to look at tables with multi-column primary keys

-- List tables with composite primary keys
SELECT 
    tc.TABLE_NAME, 
    GROUP_CONCAT(kcu.COLUMN_NAME ORDER BY kcu.ORDINAL_POSITION) AS PRIMARY_KEY_COLUMNS,
    COUNT(*) AS KEY_COLUMN_COUNT
FROM 
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
JOIN 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu ON tc.CONSTRAINT_NAME = kcu.CONSTRAINT_NAME
WHERE 
    tc.CONSTRAINT_TYPE = 'PRIMARY KEY'
    AND tc.TABLE_SCHEMA = 'InvestmentPortfolioDB'
GROUP BY 
    tc.TABLE_NAME
HAVING 
    COUNT(*) > 1;

-- Check for potentially non-atomic values (columns that might contain multiple values)
SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'InvestmentPortfolioDB' 
AND (DATA_TYPE LIKE '%text%' OR DATA_TYPE LIKE '%varchar%' OR DATA_TYPE LIKE '%char%')
AND CHARACTER_MAXIMUM_LENGTH > 100;
    
    
-- Third Normal Form (3NF) Testing

 -- This is a conceptual check for transitive dependencies
-- Look for columns that could depend on other non-key columns

SELECT 
    StockSymbol, 
    COUNT(DISTINCT CurrentPrice) AS UniqueCurrentPrices,
    COUNT(*) AS TotalRows
FROM 
    Stock
GROUP BY 
    StockSymbol
HAVING 
    COUNT(DISTINCT CurrentPrice) < COUNT(*);


SELECT 
    FundName, 
    COUNT(DISTINCT CurrentValue) AS UniqueCurrentValues,
    COUNT(*) AS TotalRows
FROM 
    MutualFund
GROUP BY 
    FundName
HAVING 
    COUNT(DISTINCT CurrentValue) < COUNT(*);
    
    
    
    
    
    
    
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --- -- - --------------------------------------------------
-- STRESS TESTING
-- 1. Bulk Insert Stress Test
------ Insert a large number of records to test database performance under heavy load.

INSERT INTO Client (ClientID, Name, ContactDetails, RiskProfile, DateOfBirth)
SELECT ClientID + 50000, CONCAT(Name, ' Test'), ContactDetails, RiskProfile, DateOfBirth
FROM Client;

-- 2.  Bulk Update Stress Test
----- Update a large portion of data to check how efficiently the database handles it.

UPDATE Portfolio 
SET TotalValue = TotalValue * 1.8 
WHERE PortfolioID <= 20;


-- 3. Bulk Delete Stress Test
---- Delete multiple records to check deletion performance.

DELETE FROM Investment WHERE InvestmentID <= 10;


-- 4. Read Query Stress Test
----- Fetch a large number of rows to see query performance.

SELECT * FROM Investment ORDER BY CurrentValue DESC LIMIT 50000;

-- 5. Complex Joins Stress Test
----- Run a query with multiple joins to simulate complex report generation.

SELECT c.ClientID, c.Name, p.PortfolioID, p.PortfolioType, i.InvestmentID, i.CurrentValue 
FROM Client c
JOIN Portfolio p ON c.ClientID = p.ClientID
JOIN Investment i ON p.PortfolioID = i.PortfolioID
WHERE i.CurrentValue > 1000000
ORDER BY i.CurrentValue DESC;

-- 6. Index Performance Test
----- Force MySQL to use indexes and analyze efficiency.

EXPLAIN ANALYZE 
SELECT * FROM Investment WHERE PortfolioID = 5;


-- 	
