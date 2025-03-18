USE AdventureWorks2022

-- Cuantas personas hay para cada letra del abecedario en middlename
SELECT MiddleName, COUNT(*)
FROM [AdventureWorks2022].[Person].[Person]
WHERE LEN(MiddleName) = 1
GROUP BY MiddleName
ORDER BY MiddleName

-- Cuantas personas 
SELECT MiddleName, COUNT(*)
FROM [AdventureWorks2022].[Person].[Person]
WHERE MiddleName LIKE '_'
GROUP BY MiddleName
