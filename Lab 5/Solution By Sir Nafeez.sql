/****** Script for SelectTopNRows command from SSMS  ******/
select C.CustomerID, O.OrderID, O.OrderDate
from Customers C
left outer join Orders as O
on C.CustomerID=o.CustomerID


select C.CustomerID, O.OrderID, O.OrderDate
from Customers C
left outer join Orders as O
on C.CustomerID=o.CustomerID
where O.OrderID is null

select C.CustomerID, O.OrderID, O.OrderDate
from Customers C
left outer join Orders as O
on C.CustomerID=o.CustomerID
where Month(O.OrderDate)='7' and year(O.OrderDate)='1997'

SELECT c.CustomerID, count(o.OrderID) as numoforders
  FROM [Northwind].[dbo].[Customers] c
  left outer join Orders o
  on c.CustomerID=o.CustomerID
  group by c.CustomerID;

SELECT E.EmployeeID, E.firstname, E.lastname
FROM Employees AS E
CROSS JOIN dbo.Products AS N
WHERE N.ProductID <= 5
ORDER BY EmployeeID asc;
FROM Employees AS E
CROSS JOIN dbo.Orders AS D
WHERE D.OrderDate <= '1997-08-04 00:00:00.000' and D.OrderDate >= '1996-07-04 00:00:00.000'
ORDER BY EmployeeID, OrderDate;
FROM Customers AS C
LEFT OUTER JOIN Orders AS O
ON O.CustomerID = C.CustomerID
AND O.OrderDate = '1997-07-04 00:00:00.000';
select e.FirstName+ ' ' + e.LastName as EmployeeName, DATEDIFF(hour,e.BirthDate,GETDATE())/8766 as EmployeeAge, DATEDIFF(hour,e1.BirthDate,GETDATE())/8766 as ManagerAge 
from Employees as e
cross join Employees as e1
where e.ReportsTo=e1.EmployeeID
and DATEDIFF(hour,e.BirthDate,GETDATE())/8766 > 60 and 
DATEDIFF(hour,e1.BirthDate,GETDATE())/8766 >=70
and e.BirthDate<e1.BirthDate


SELECT p.ProductName,o.OrderDate 
FROM Orders as o 
JOIN [Order Details] as od 
ON o.OrderID=od.orderID 
JOIN Products as p 
ON p.ProductID=od.ProductID 
WHERE o.OrderDate='08-08-1997'

SELECT o.ShipAddress as Address,o.shipCity as City,o.ShipCountry as Country FROM Orders as o JOIN Employees as e ON o.EmployeeID=e.EmployeeID  WHERE  o.ShippedDate>o.RequiredDate AND e.FirstName='Anne' 


select distinct(o.ShipCountry)
from [Order Details] od
join Orders o
on o.OrderID=od.OrderID
join Products p
on p.ProductID=od.ProductID
join Categories c
on c.CategoryID=p.CategoryID
where c.CategoryID=1
 








