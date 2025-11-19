SELECT 
    s.id AS [Staff ID],
    s.name AS [Name],
    s.sex AS [Sex],
    s.date_of_birth AS [Date of Birth],
    s.address AS [Address],
    s.phone AS [Phone],
    p.position AS [Current Position]
FROM 
    staffs s
INNER JOIN 
    positions p
ON 
    s.id = p.staff_id
WHERE 
    p.end_date IS NULL                   -- Current position
    AND DATEDIFF(YEAR, p.start_date, GETDATE()) > 5;  -- Worked more than 5 years