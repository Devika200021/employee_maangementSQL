# employee_mangementSQL
An SQL-based database to manage employee records, salaries, attendance, and payrolls efficiently.

📌 Overview
This project is designed to store, manage, and query employee-related data using SQL. It includes functionalities like:  
- 👤 Employee details management (ID, name, position, department, salary, etc.)  
- 📊 Payroll & salary tracking
- 🏢 Department-wise organization
- 📅 Leave & attendance management

🛠️ Technologies Used
- SQL Database (MySQL) 
- SQL Queries (DDL, DML, Joins, Views, etc.) 

📂 Database Schema
The project consists of the following tables:  

| Table Name | Description |
|--------------|--------------|
| `employees` | Stores employee details (ID, Name, Department, Role, Salary) |
| `departments` | Stores department information |
| `attendance` | Tracks employee attendance |
| `leaverequests` | Manages leave requests |
| `shifts` | Stores shift details |
| `payroll` | Stores salary details |


📜 How to Run the Project?
1.Prerequisites
Ensure you have:
MySQL or any SQL-compatible database installed (e.g., PostgreSQL, SQL Server).
A SQL client like MySQL Workbench
2. Clone the repository:  
   ```bash
   git clone https://github.com/yourusername/employee_managementSQL.git
   cd employee_managementSQL
   ```
3. Open the SQL script (`EmployeeManagement.sql`) in your SQL database tool (MySQL Workbench).  
4. Run the script to create tables and insert sample data.  
5. Execute SQL queries to interact with the database.
6. Verify Database
Use:
```bash
SHOW TABLES;
SELECT * FROM employees;
```
This ensures that the tables and data are correctly loaded.

📜 License:
This project is for educational purposes. Unauthorized usage is *not permitted* without permission.  

📬 Contact -
💼 LinkedIn: www.linkedin.com/in/devika-ravi
