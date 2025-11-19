SELECT TOP 5
    c.id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM 
    Customers c
    INNER JOIN Orders o ON c.id = o.customer_id
WHERE 
    o.created_at >= DATEADD(MONTH, -6, GETDATE())
GROUP BY 
    c.id, 
    c.name
ORDER BY 
    total_spent DESC;

--The Resault display null because last 6 months no customer order.