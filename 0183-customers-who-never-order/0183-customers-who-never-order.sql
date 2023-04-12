SELECT c1.name As Customers
FROM Customers c1
WHERE c1.id NOT IN
(SELECT c.id
FROM  Customers c
INNER JOIN Orders o
ON c.id = o.customerId)