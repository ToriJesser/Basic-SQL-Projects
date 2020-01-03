USE AdventureWorks2014
GO

CREATE PROC Person_Lookup @FirstName varchar(30), @JobTitle varchar(50)
AS
SELECT FirstName, LastName, JobTitle, EmailAddress FROM HumanResources.Employee INNER JOIN Person.Person ON HumanResources.Employee.BusinessEntityID = Person.Person.BusinessEntityID
INNER JOIN Person.EmailAddress ON HumanResources.Employee.BusinessEntityID = Person.EmailAddress.BusinessEntityID
WHERE FirstName = @FirstName
AND JobTitle = @JobTitle

EXEC Person_Lookup @FirstName = 'Jo', @JobTitle = 'Janitor'