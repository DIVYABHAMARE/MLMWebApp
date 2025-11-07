-- =========================================
-- MLMTask Database Creation Script
-- =========================================

-- 1. Create Database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'MLMTaskDB')
BEGIN
    CREATE DATABASE MLMTaskDB;
END
GO

USE MLMTaskDB;
GO

-- 2. Create Users Table
IF OBJECT_ID('dbo.Users', 'U') IS NOT NULL
    DROP TABLE dbo.Users;
GO

CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId NVARCHAR(20) NOT NULL UNIQUE,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Mobile NVARCHAR(20) NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    SponsorUserId NVARCHAR(20) NULL,
    IsActive BIT NOT NULL DEFAULT 1
);
GO

-- 3. Insert Sample Users
INSERT INTO Users (UserId, FullName, Email, Mobile, Password, SponsorUserId, IsActive)
VALUES
('REG1001', 'Alice Smith', 'alice@example.com', '9111188777', 'AQAAAAIAAYagAAAAELnwxy0YS5GSZXvN5qv6h8RqQUdJkAwwrIUF7niX0jm4xCA95XLAHUlXBA7ipovgPA==', NULL, 1),
('REG1002', 'Bob Johnson', 'bob@example.com', '9098886666', 'AQAAAAIAAYagAAAAEOwtyunly7g+XU0wbaXfew9wfXBbbZdqQnKU0DUqrhCm+8PxKdw5VipBfffiWnnnnA==', 'REG1001', 1);
GO

-- Optional: Verify data
SELECT * FROM Users;
