## Task : Generation Plan MLM Web Application

## Overview
This is a simple MLM (Multi-Level Marketing) web application built using ASP.NET Core MVC.  
Users can register, login, view their generation tree, and track income up to 3 levels.

## Features
- User Registration with optional Sponsor ID
- Login and Logout
- Dashboard showing:
  - Total Direct Referrals
  - Total Team Members (up to 3 levels)
  - Generation Income
- Admin Panel:
  - View all users
  - Activate/Deactivate users
  - See Sponsor relationships

## Technology Used
- Backend: ASP.NET Core MVC 
- Frontend: Razor Views, HTML, CSS, Bootstrap 
- Database: SQL Server
- ORM: Entity Framework Core

## Setup Instructions
1. Clone or unzip the project.
2. Open `appsettings.json` and update the connection string:
   ```json
   "ConnectionStrings": {
       "DefaultConnection": "Server=YOUR_SERVER_NAME;Database=MLMTaskDB;User Id=YOUR_USER_ID;Password=YOUR_PASSWORD;TrustServerCertificate=True;"
1. }

## Commands for EF Core Migration
- Add-Migration Migration_Name
- Update Database