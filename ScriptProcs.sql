--Usando um Banco de Dados
USE SAMPLE

--Criando Tabela Base
CREATE TABLE tblEmployee(
	EmployeeId INT IDENTITY(1,1) NOT NULL,
	Name VARCHAR(20) NOT NULL,
	City VARCHAR(20) NOT NULL,
	Department VARCHAR(20) NOT NULL,
	Gender VARCHAR(6) NOT NULL
)

--Criando Procedure para Inserir
CREATE PROCEDURE spAddEmployee
(
	@Name VARCHAR(20),
	@City VARCHAR(20),
	@Department VARCHAR(20),
	@Gender VARCHAR(6)
)
AS
BEGIN
INSERT INTO tblEmployee (Name,City,Department,Gender)
VALUES (@Name,@City,@Department,@Gender)
END

--Criando Procedure para Atualizar
CREATE PROCEDURE spUpdateEmployee
(
	@EmpId INTEGER,
	@Name VARCHAR(20),
	@City VARCHAR(20),
	@Department VARCHAR(20),
	@Gender VARCHAR(6)
)
AS 
BEGIN
	UPDATE tblEmployee
	SET 
	Name=@Name,
	City=@City,
	Department=@Department,
	Gender=@Gender
	WHERE EmployeeId=@EmpId
END

--Criando Procedure para Deletar
CREATE PROCEDURE spDeleteEmployee
(
	@EmpId INT
)
AS
BEGIN
	DELETE FROM tblEmployee WHERE EmployeeId=@EmpId
END

--Criando Procedure para Selecionar
CREATE PROCEDURE spGetAllEmployees
AS
BEGIN
	SELECT * FROM tblEmployee
END

--Fonte: https://dzone.com/articles/crud-operation-with-aspnet-core-mvc-using-adonet-a