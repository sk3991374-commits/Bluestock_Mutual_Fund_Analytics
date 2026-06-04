-- 1. Main Scheme Table banate hain
CREATE TABLE Scheme_Performance (
    amfi_code INT PRIMARY KEY,
    scheme_name VARCHAR(150),
    fund_house VARCHAR(100),
    category VARCHAR(50),
    aum_crore DECIMAL(15,2),
    risk_grade VARCHAR(50)
);

-- 2. Daily NAV History Table banate hain
CREATE TABLE NAV_History (
    amfi_code INT,
    nav_date DATE,
    nav_value DECIMAL(10,4)
);

-- 3. Data Ingestion (Kuch dummy rows insert karte hain testing ke liye)
INSERT INTO Scheme_Performance VALUES 
(119551, 'SBI Bluechip Fund', 'SBI Mutual Fund', 'Large Cap', 14288.00, 'Moderate'),
(102886, 'UTI Mid Cap Fund', 'UTI Mutual Fund', 'Mid Cap', 41728.00, 'High');

INSERT INTO NAV_History VALUES 
(119551, '2026-03-01', 54.3856),
(102886, '2026-03-01', 210.4500);

-- 4. Check whether everything is working (Practical Output)
SELECT s.scheme_name, s.category, n.nav_date, n.nav_value 
FROM Scheme_Performance s
INNER JOIN NAV_History n ON s.amfi_code = n.amfi_code;
