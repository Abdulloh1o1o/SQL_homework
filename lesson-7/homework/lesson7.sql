#easy

SELECT MIN(Price) AS MinPrice
FROM Products;


SELECT MAX(Salary) AS MaxSalary
FROM Employees;

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

SELECT COUNT(DISTINCT ProductCategory) AS UniqueCategories
FROM Products;

SELECT SUM(SaleAmount) AS TotalSales
FROM Sales
WHERE ProductID = 7;

SELECT AVG(Age) AS AverageAge
FROM Employees;

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;

SELECT 
    ProductCategory, 
    MIN(Price) AS MinPrice, 
    MAX(Price) AS MaxPrice
FROM Products
GROUP BY ProductCategory;

SELECT CustomerID, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID;

SELECT DeptID
FROM Employees
GROUP BY DeptID
HAVING COUNT(*) > 5;

#medium

SELECT 
    ProductCategory,
    SUM(SaleAmount) AS TotalSales,
    AVG(SaleAmount) AS AverageSales
FROM Sales
GROUP BY ProductCategory;


SELECT COUNT(*) AS HR_EmployeeCount
FROM Employees
WHERE Department = 'HR';


SELECT 
    DeptID,
    MAX(Salary) AS HighestSalary,
    MIN(Salary) AS LowestSalary
FROM Employees
GROUP BY DeptID;


SELECT 
    DeptID,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DeptID;


SELECT 
    DeptID,
    AVG(Salary) AS AverageSalary,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID;


SELECT ProductCategory, AVG(Price) AS AveragePrice
FROM Products
GROUP BY ProductCategory
HAVING AVG(Price) > 400;


SELECT 
    YEAR(SaleDate) AS SaleYear,
    SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY YEAR(SaleDate)
ORDER BY SaleYear;


SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) >= 3;


SELECT DeptID
FROM Employees
GROUP BY DeptID
HAVING AVG(Salary) > 60000;


#hard

SELECT 
    ProductCategory,
    AVG(Price) AS AveragePrice
FROM Products
GROUP BY ProductCategory
HAVING AVG(Price) > 150;


SELECT 
    CustomerID,
    SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID
HAVING SUM(SaleAmount) > 1500;


SELECT 
    DeptID,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DeptID
HAVING AVG(Salary) > 65000;



WITH CustomerOrders AS (
    SELECT
        CustomerID,
        Freight,
        TotalDue
    FROM Sales.SalesOrderHeader
),
FreightOver50 AS (
    SELECT
        CustomerID,
        SUM(TotalDue) AS TotalAmountOver50
    FROM CustomerOrders
    WHERE Freight > 50
    GROUP BY CustomerID
),
MinPurchase AS (
    SELECT
        CustomerID,
        MIN(TotalDue) AS MinPurchaseAmount
    FROM CustomerOrders
    GROUP BY CustomerID
)
SELECT
    f.CustomerID,
    f.TotalAmountOver50,
    m.MinPurchaseAmount
FROM FreightOver50 f
JOIN MinPurchase m ON f.CustomerID = m.CustomerID;


SELECT
    YEAR(OrderDate) AS SaleYear,
    MONTH(OrderDate) AS SaleMonth,
    SUM(SaleAmount) AS TotalSales,
    COUNT(DISTINCT ProductID) AS UniqueProductsSold
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(DISTINCT ProductID) >= 2
ORDER BY SaleYear, SaleMonth;


