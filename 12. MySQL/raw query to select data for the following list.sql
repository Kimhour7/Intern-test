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
LEFT JOIN 
    positions p
ON 
    s.id = p.staff_id
    AND p.end_date IS NULL;