CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    DateOfJoining DATE,
    Position VARCHAR(50),
    DepartmentID INT,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15) UNIQUE
);
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) UNIQUE NOT NULL,
    ManagerID INT
);

ALTER TABLE Departments  -- added foreign key to Departments table
ADD FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID) ON DELETE SET NULL;

-- drop database EmployeeManagement;
show tables;

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE NOT NULL,
    Status ENUM('Present', 'Absent', 'On Leave') NOT NULL
);

ALTER TABLE Attendance  -- added foreign key to Attendance table
ADD FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) ON DELETE CASCADE;

-- drop table LeaveRequests;
CREATE TABLE LeaveRequests (
    LeaveID varchar(10) PRIMARY KEY,
    EmployeeID INT,
    LeaveType VARCHAR(50),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Status ENUM('Pending', 'Approved', 'Rejected') DEFAULT 'Pending'
);

ALTER TABLE LeaveRequests  -- added foreign key to LeaveRequests table
ADD FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) ON DELETE CASCADE;

-- drop table Shifts;
CREATE TABLE Shifts (
    ShiftID varchar(50) PRIMARY KEY,
    ShiftName VARCHAR(50) NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    BreakDuration INT -- in minutes
);
-- drop table Payroll;
CREATE TABLE Payroll (
    PayrollID Varchar(10) PRIMARY KEY,
    EmployeeID INT,
    BaseSalary DECIMAL(10, 2) NOT NULL,
    Bonus DECIMAL(10, 2),
    Deductions DECIMAL(10, 2),
    PayPeriodStart DATE,
    PayPeriodEnd DATE
);

ALTER TABLE Payroll  -- added foreign key to Payroll table
ADD FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) ON DELETE CASCADE;

Show tables;

-- inserting values in tables
select * from employees;
INSERT INTO Employees VALUES
(1, 'Ira Brar', '2021-08-01', 'Business Analyst', 102, 'ira.brar7156@example.com', '+918476262947'),
(2, 'Indranil Arya', '2024-06-07', 'Project Manager', 102, 'indranil.arya1830@example.com', '+917757949845'),
(3, 'Adah Chokshi', '2023-10-01', 'Business Analyst', 108, 'adah.chokshi2162@example.com', '+917037013378'),
(4, 'Vritika Vora', '2022-02-28', 'DevOps Engineer', 106, 'vritika.vora6183@example.com', '+918158781326'),
(5, 'Yasmin Rao', '2021-01-15', 'Project Manager', 107, 'yasmin.rao3037@example.com', '+917484725012'),
(6, 'Shaurya Puri', '2019-12-12', 'Systems Engineer', 109, 'shaurya.puri4452@example.com', '+918316780759'),
(7, 'Karthik Nair', '2022-06-18', 'Software Engineer', 103, 'karthik.nair5299@example.com', '+917165827950'),
(8, 'Tanvi Desai', '2023-03-27', 'HR Manager', 104, 'tanvi.desai8972@example.com', '+917072439216'),
(9, 'Prisha Mehta', '2020-11-19', 'Data Analyst', 108, 'prisha.mehta9537@example.com', '+919845623718'),
(10, 'Kabir Shah', '2021-04-05', 'DevOps Engineer', 106, 'kabir.shah7164@example.com', '+917826095321'),
(11, 'Neha Joshi', '2020-07-24', 'Business Analyst', 102, 'neha.joshi5721@example.com', '+918315790246'),
(12, 'Aryan Reddy', '2019-05-17', 'Network Specialist', 110, 'aryan.reddy6135@example.com', '+919748120953'),
(13, 'Divya Singh', '2022-08-09', 'Systems Engineer', 105, 'divya.singh1487@example.com', '+918357892146'),
(14, 'Reyansh Jain', '2023-09-14', 'Data Analyst', 103, 'reyansh.jain2689@example.com', '+918245679130'),
(15, 'Sanya Kapoor', '2024-01-20', 'HR Manager', 104, 'sanya.kapoor9052@example.com', '+917437580926'),
(16, 'Rohan Verma', '2021-02-10', 'DevOps Engineer', 107, 'rohan.verma3814@example.com', '+919457820536'),
(17, 'Maya Pillai', '2020-10-30', 'Project Manager', 109, 'maya.pillai4721@example.com', '+919084527139'),
(18, 'Nikhil Kulkarni', '2022-12-05', 'Software Engineer', 101, 'nikhil.kulkarni2543@example.com', '+917258941306'),
(19, 'Anaya Malhotra', '2023-05-19', 'Business Analyst', 102, 'anaya.malhotra3298@example.com', '+917319405824'),
(20, 'Arjun Das', '2019-09-07', 'Network Specialist', 106, 'arjun.das6821@example.com', '+918467120389'),
(21, 'Pia Sharma', '2022-11-02', 'HR Manager', 104, 'pia.sharma3816@example.com', '+919385612307'),
(22, 'Rishabh Singh', '2021-07-22', 'Software Engineer', 103, 'rishabh.singh7245@example.com', '+919617328704'),
(23, 'Tanya Mishra', '2020-04-11', 'Business Analyst', 102, 'tanya.mishra1739@example.com', '+918267493215'),
(24, 'Aarav Gupta', '2023-01-13', 'Project Manager', 109, 'aarav.gupta6548@example.com', '+918726405312'),
(25, 'Sia Chandra', '2021-05-03', 'Systems Engineer', 105, 'sia.chandra1903@example.com', '+918526970431'),
(26, 'Vivaan Kumar', '2019-03-29', 'DevOps Engineer', 106, 'vivaan.kumar2051@example.com', '+919082751640'),
(27, 'Aditi Yadav', '2023-06-15', 'Data Analyst', 103, 'aditi.yadav4893@example.com', '+917139805412'),
(28, 'Rajeev Kaur', '2020-08-20', 'HR Manager', 104, 'rajeev.kaur1936@example.com', '+918276491023'),
(29, 'Riddhima Sen', '2022-02-25', 'Software Engineer', 101, 'riddhima.sen3427@example.com', '+917927430615'),
(30, 'Mohit Tandon', '2023-04-21', 'Project Manager', 109, 'mohit.tandon7645@example.com', '+919617308245'),
(31, 'Rhea Bose', '2021-10-06', 'Network Specialist', 110, 'rhea.bose9056@example.com', '+918596472013'),
(32, 'Ishaan Pandey', '2020-01-16', 'DevOps Engineer', 106, 'ishaan.pandey2175@example.com', '+919528407612'),
(33, 'Sneha Rao', '2022-03-30', 'Business Analyst', 102, 'sneha.rao8952@example.com', '+919615387402'),
(34, 'Vihaan Kapoor', '2024-05-23', 'Data Analyst', 103, 'vihaan.kapoor7801@example.com', '+918736591204'),
(35, 'Jiya Bajaj', '2020-12-18', 'HR Manager', 104, 'jiya.bajaj5368@example.com', '+917283609514'),
(36, 'Atharv Bhatt', '2019-08-27', 'Software Engineer', 101, 'atharv.bhatt9823@example.com', '+917529038671'),
(37, 'Lavanya Dutta', '2023-02-17', 'Project Manager', 109, 'lavanya.dutta1098@example.com', '+917638472501'),
(38, 'Siddharth Chauhan', '2021-11-15', 'Systems Engineer', 105, 'siddharth.chauhan8423@example.com', '+918475960823'),
(39, 'Meera Arora', '2022-07-08', 'DevOps Engineer', 106, 'meera.arora7623@example.com', '+918526701498'),
(40, 'Ayaan Gupta', '2023-08-25', 'Network Specialist', 110, 'ayaan.gupta4572@example.com', '+918736508913'),
(41, 'Rohit Sharma', '2020-05-05', 'Business Analyst', 102, 'rohit.sharma1549@example.com', '+919408512703'),
(42, 'Pihu Agarwal', '2024-04-19', 'HR Manager', 104, 'pihu.agarwal2190@example.com', '+917502946817'),
(43, 'Krish Iyer', '2021-06-12', 'Data Analyst', 103, 'krish.iyer9832@example.com', '+918620794351'),
(44, 'Anisha Rao', '2019-04-24', 'Systems Engineer', 105, 'anisha.rao6591@example.com', '+919634580719'),
(45, 'Harshita Nair', '2022-10-01', 'DevOps Engineer', 106, 'harshita.nair3025@example.com', '+917324590812'),
(46, 'Niharika Das', '2021-02-03', 'Network Specialist', 110, 'niharika.das7408@example.com', '+919832457906'),
(47, 'Pranav Patel', '2023-09-11', 'Business Analyst', 102, 'pranav.patel5317@example.com', '+918329407821'),
(48, 'Sara Singh', '2020-09-22', 'Project Manager', 109, 'sara.singh4083@example.com', '+917248609731'),
(49, 'Parth Deshmukh', '2021-12-26', 'Software Engineer', 103, 'parth.deshmukh@example.com','+91867543228'),
(50, 'Arya Ghosh', '2022-05-19', 'Data Analyst', 108, 'arya.ghosh6792@example.com', '+918217543098'),
(51, 'Nidhi Taneja', '2021-03-27', 'Systems Engineer', 105, 'nidhi.taneja7321@example.com', '+917236582014'),
(52, 'Aarav Mehta', '2023-07-18', 'Network Specialist', 110, 'aarav.mehta2946@example.com', '+917923460175'),
(53, 'Ishita Bajpai', '2020-08-08', 'Project Manager', 109, 'ishita.bajpai8432@example.com', '+919138407236'),
(54, 'Harsh Sinha', '2022-11-09', 'Software Engineer', 101, 'harsh.sinha7648@example.com', '+918426307519'),
(55, 'Anvi Reddy', '2021-04-13', 'DevOps Engineer', 106, 'anvi.reddy1029@example.com', '+919724536801'),
(56, 'Veer Sharma', '2019-02-25', 'Business Analyst', 102, 'veer.sharma9215@example.com', '+917283610428'),
(57, 'Jahnvi Bhatia', '2022-03-14', 'HR Manager', 104, 'jahnvi.bhatia4628@example.com', '+918347290165'),
(58, 'Aaryan Khurana', '2023-06-04', 'Data Analyst', 108, 'aaryan.khurana3549@example.com', '+917829354607'),
(59, 'Sanya Menon', '2021-01-12', 'Systems Engineer', 105, 'sanya.menon8752@example.com', '+918739650418'),
(60, 'Yash Rathore', '2024-03-08', 'Project Manager', 107, 'yash.rathore9321@example.com', '+919436721509'),
(61, 'Kiara Ahuja', '2020-06-06', 'DevOps Engineer', 106, 'kiara.ahuja5476@example.com', '+918726410327'),
(62, 'Atharv Chatterjee', '2019-07-17', 'Software Engineer', 103, 'atharv.chatterjee1647@example.com', '+919347618205'),
(63, 'Myra Kapoor', '2022-09-26', 'Business Analyst', 102, 'myra.kapoor3241@example.com', '+918257940136'),
(64, 'Rudra Mishra', '2023-10-03', 'HR Manager', 104, 'rudra.mishra5279@example.com', '+917821364905'),
(65, 'Riya Nanda', '2021-02-21', 'Data Analyst', 108, 'riya.nanda4371@example.com', '+917349582017'),
(66, 'Shaurya Batra', '2020-12-11', 'Network Specialist', 110, 'shaurya.batra7593@example.com', '+919285374601'),
(67, 'Aditi Gupta', '2022-08-01', 'DevOps Engineer', 106, 'aditi.gupta8924@example.com', '+918732490315'),
(68, 'Vihaan Malik', '2023-05-30', 'Project Manager', 107, 'vihaan.malik2356@example.com', '+917832561094'),
(69, 'Ananya Tiwari', '2019-09-09', 'Systems Engineer', 105, 'ananya.tiwari8496@example.com', '+918436527093'),
(70, 'Dhruv Kohli', '2021-10-19', 'Business Analyst', 102, 'dhruv.kohli6153@example.com', '+917529038601'),
(71, 'Alia Chopra', '2020-02-16', 'Software Engineer', 103, 'alia.chopra9812@example.com', '+919827364015'),
(72, 'Kunal Sood', '2023-04-12', 'HR Manager', 104, 'kunal.sood4271@example.com', '+918726501402'),
(73, 'Rishika Sehgal', '2022-11-29', 'Data Analyst', 108, 'rishika.sehgal1587@example.com', '+917438920314'),
(74, 'Arnav Verma', '2020-03-21', 'Project Manager', 109, 'arnav.verma6794@example.com', '+919824305716'),
(75, 'Diya Rajan', '2021-07-14', 'Network Specialist', 110, 'diya.rajan5432@example.com', '+918739065217'),
(76, 'Manav Bhatia', '2023-01-22', 'DevOps Engineer', 106, 'manav.bhatia8175@example.com', '+917236805129'),
(77, 'Sakshi Jha', '2022-10-20', 'Systems Engineer', 105, 'sakshi.jha9281@example.com', '+918356907251'),
(78, 'Ayush Gupta', '2019-04-18', 'Business Analyst', 102, 'ayush.gupta4825@example.com', '+917439560231'),
(79, 'Aarohi Roy', '2023-08-27', 'Software Engineer', 101, 'aarohi.roy1904@example.com', '+918734056172'),
(80, 'Vivaan Singh', '2021-11-07', 'HR Manager', 104, 'vivaan.singh6217@example.com', '+919247018345'),
(81, 'Ridhima Malik', '2020-09-15', 'Project Manager', 109, 'ridhima.malik2719@example.com', '+918237490516'),
(82, 'Samarth Shah', '2022-01-04', 'DevOps Engineer', 106, 'samarth.shah9345@example.com', '+918726310429'),
(83, 'Kavya Nair', '2023-03-05', 'Data Analyst', 103, 'kavya.nair4721@example.com', '+917924610843'),
(84, 'Naman Kumar', '2019-08-12', 'Network Specialist', 110, 'naman.kumar8195@example.com', '+918635092714'),
(85, 'Meghna Chawla', '2022-06-25', 'Business Analyst', 102, 'meghna.chawla2596@example.com', '+918274360194'),
(86, 'Aravind Reddy', '2021-05-09', 'Systems Engineer', 105, 'aravind.reddy1937@example.com', '+917329401625'),
(87, 'Srishti Agarwal', '2020-04-29', 'HR Manager', 104, 'srishti.agarwal8715@example.com', '+917486301498'),
(88, 'Nisha Rana', '2023-12-16', 'Software Engineer', 101, 'nisha.rana6534@example.com', '+918273405619'),
(89, 'Akshat Jain', '2020-11-08', 'Project Manager', 109, 'akshat.jain4729@example.com', '+917385920641'),
(90, 'Vanshika Kapoor', '2021-02-26', 'DevOps Engineer', 106, 'vanshika.kapoor3159@example.com', '+917892064137'),
(91, 'Rishi Sharma', '2022-07-31', 'Data Analyst', 108, 'rishi.sharma1956@example.com', '+917235940185'),
(92, 'Avantika Menon', '2019-03-13', 'Business Analyst', 102, 'avantika.menon9135@example.com', '+918526479013'),
(93, 'Arjun Sinha', '2023-09-19', 'Network Specialist', 110, 'arjun.sinha6782@example.com', '+918634507214'),
(94, 'Aishwarya Bhatt', '2021-06-21', 'Systems Engineer', 105, 'aishwarya.bhatt4921@example.com', '+917326509341'),
(95, 'Vivaan Raj', '2020-08-14', 'HR Manager', 104, 'vivaan.raj8156@example.com', '+919456380214'),
(96, 'Anmol Desai', '2023-07-01', 'Project Manager', 109, 'anmol.desai2549@example.com', '+918739012647'),
(97, 'Ritika Gupta', '2022-03-12', 'DevOps Engineer', 106, 'ritika.gupta1057@example.com', '+918527640195'),
(98, 'Ishaan Khanna', '2020-10-22', 'Data Analyst', 108, 'ishaan.khanna8374@example.com', '+918439507321'),
(99, 'Kiran Kaur', '2022-04-17', 'Network Specialist', 110, 'kiran.kaur5387@example.com', '+918374901265'),
(100, 'Pranav Bhardwaj', '2021-09-28', 'Business Analyst', 102, 'pranav.bhardwaj4731@example.com', '+917234056182');

select * from Departments;
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID) VALUES
(101, 'Human Resources', 65),
(102, 'Finance', 72),
(103, 'Research and Development', 15),
(104, 'IT Support', 89),
(105, 'Marketing', 34),
(106, 'Sales', 57),
(107, 'Operations', 43),
(108, 'Customer Service', 88),
(109, 'Procurement', 24),
(110, 'Legal', 53);

select * from Attendance;
INSERT INTO Attendance VALUES
(101, 1, '2024-11-01', 'Present'),
(102, 2, '2024-11-01', 'Absent'),
(103, 3, '2024-11-01', 'On Leave'),
(104, 4, '2024-11-01', 'Present'),
(105, 5, '2024-11-01', 'Present'),
(106, 6, '2024-11-01', 'Absent'),
(107, 7, '2024-11-01', 'On Leave'),
(108, 8, '2024-11-01', 'Present'),
(109, 9, '2024-11-01', 'Absent'),
(110, 10, '2024-11-01', 'Present'),
(111, 11, '2024-11-01', 'Present'),
(112, 12, '2024-11-01', 'Absent'),
(113, 13, '2024-11-01', 'Present'),
(114, 14, '2024-11-01', 'On Leave'),
(115, 15, '2024-11-01', 'Present'),
(116, 16, '2024-11-01', 'Absent'),
(117, 17, '2024-11-01', 'Present'),
(118, 18, '2024-11-01', 'On Leave'),
(119, 19, '2024-11-01', 'Absent'),
(120, 20, '2024-11-01', 'Present'),
(121, 21, '2024-11-01', 'Present'),
(122, 22, '2024-11-01', 'On Leave'),
(123, 23, '2024-11-01', 'Absent'),
(124, 24, '2024-11-01', 'Present'),
(125, 25, '2024-11-01', 'Present'),
(126, 26, '2024-11-01', 'Absent'),
(127, 27, '2024-11-01', 'On Leave'),
(128, 28, '2024-11-01', 'Present'),
(129, 29, '2024-11-01', 'Present'),
(130, 30, '2024-11-01', 'Absent'),
(131, 31, '2024-11-01', 'Present'),
(132, 32, '2024-11-01', 'Absent'),
(133, 33, '2024-11-01', 'Present'),
(134, 34, '2024-11-01', 'On Leave'),
(135, 35, '2024-11-01', 'Present'),
(136, 36, '2024-11-01', 'Absent'),
(137, 37, '2024-11-01', 'Present'),
(138, 38, '2024-11-01', 'On Leave'),
(139, 39, '2024-11-01', 'Absent'),
(140, 40, '2024-11-01', 'Present'),
(141, 41, '2024-11-01', 'Present'),
(142, 42, '2024-11-01', 'Absent'),
(143, 43, '2024-11-01', 'On Leave'),
(144, 44, '2024-11-01', 'Present'),
(145, 45, '2024-11-01', 'Absent'),
(146, 46, '2024-11-01', 'Present'),
(147, 47, '2024-11-01', 'On Leave'),
(148, 48, '2024-11-01', 'Present'),
(149, 49, '2024-11-01', 'Absent'),
(150, 50, '2024-11-01', 'Present'),
(151, 51, '2024-11-01', 'Present'),
(152, 52, '2024-11-01', 'On Leave'),
(153, 53, '2024-11-01', 'Absent'),
(154, 54, '2024-11-01', 'Present'),
(155, 55, '2024-11-01', 'Present'),
(156, 56, '2024-11-01', 'Absent'),
(157, 57, '2024-11-01', 'Present'),
(158, 58, '2024-11-01', 'Present'),
(159, 59, '2024-11-01', 'On Leave'),
(160, 60, '2024-11-01', 'Absent'),
(161, 61, '2024-11-01', 'Present'),
(162, 62, '2024-11-01', 'Absent'),
(163, 63, '2024-11-01', 'Present'),
(164, 64, '2024-11-01', 'On Leave'),
(165, 65, '2024-11-01', 'Present'),
(166, 66, '2024-11-01', 'Absent'),
(167, 67, '2024-11-01', 'Present'),
(168, 68, '2024-11-01', 'Present'),
(169, 69, '2024-11-01', 'On Leave'),
(170, 70, '2024-11-01', 'Absent'),
(171, 71, '2024-11-01', 'Present'),
(172, 72, '2024-11-01', 'Absent'),
(173, 73, '2024-11-01', 'Present'),
(174, 74, '2024-11-01', 'Present'),
(175, 75, '2024-11-01', 'On Leave'),
(176, 76, '2024-11-01', 'Absent'),
(177, 77, '2024-11-01', 'Present'),
(178, 78, '2024-11-01', 'Present'),
(179, 79, '2024-11-01', 'Absent'),
(180, 80, '2024-11-01', 'On Leave'),
(181, 81, '2024-11-01', 'Present'),
(182, 82, '2024-11-01', 'Absent'),
(183, 83, '2024-11-01', 'Present'),
(184, 84, '2024-11-01', 'Present'),
(185, 85, '2024-11-01', 'Absent'),
(186, 86, '2024-11-01', 'Present'),
(187, 87, '2024-11-01', 'Present'),
(188, 88, '2024-11-01', 'On Leave'),
(189, 89, '2024-11-01', 'Absent'),
(190, 90, '2024-11-01', 'Present'),
(191, 91, '2024-11-01', 'Present'),
(192, 92, '2024-11-01', 'On Leave'),
(193, 93, '2024-11-01', 'Present'),
(194, 94, '2024-11-01', 'Absent'),
(195, 95, '2024-11-01', 'Present'),
(196, 96, '2024-11-01', 'Absent'),
(197, 97, '2024-11-01', 'On Leave'),
(198, 98, '2024-11-01', 'Present'),
(199, 99, '2024-11-01', 'Present'),
(200, 100, '2024-11-01', 'On Leave');

INSERT INTO Attendance (AttendanceID, EmployeeID, AttendanceDate, Status)
VALUES  -- inserting more values in attendance table
(202, 14, '2024-11-01', 'Present'),
(203, 73, '2024-11-02', 'Present'),
(204, 28, '2024-11-03', 'Present'),
(205, 41, '2024-11-04', 'Present'),
(206, 91, '2024-11-05', 'Present'),
(207, 19, '2024-11-06', 'Present'),
(208, 85, '2024-11-07', 'Present'),
(209, 67, '2024-11-08', 'Present'),
(210, 32, '2024-11-09', 'Present'),
(211, 56, '2024-11-10', 'Present'),
(212, 13, '2024-11-11', 'Present'),
(213, 98, '2024-11-12', 'Absent'),
(214, 22, '2024-11-13', 'On Leave'),
(215, 75, '2024-11-14', 'Present'),
(216, 49, '2024-11-15', 'Present'),
(217, 88, '2024-11-16', 'Present'),
(218, 31, '2024-11-17', 'Present'),
(219, 62, '2024-11-18', 'Present'),
(220, 46, '2024-11-19', 'Present'),
(221, 93, '2024-11-20', 'Present'),
(222, 11, '2024-11-21', 'Present'),
(223, 79, '2024-11-22', 'Present'),
(224, 29, '2024-11-23', 'Present'),
(225, 58, '2024-11-24', 'Present'),
(226, 95, '2024-11-25', 'Present'),
(227, 17, '2024-11-26', 'Present'),
(228, 84, '2024-11-27', 'Present'),
(229, 65, '2024-11-28', 'Present'),
(230, 38, '2024-11-29', 'Present'),
(231, 51, '2024-11-30', 'Present'),
(232, 92, '2024-11-30', 'Absent'),
(233, 25, '2024-11-30', 'On Leave'),
(234, 71, '2024-11-30', 'Present'),
(235, 43, '2024-11-30', 'Present'),
(236, 89, '2024-11-30', 'Present'),
(237, 33, '2024-11-30', 'Present'),
(238, 61, '2024-11-30', 'Present'),
(239, 47, '2024-11-30', 'Present'),
(240, 94, '2024-11-30', 'Present'),
(241, 12, '2024-11-30', 'Present'),
(242, 78, '2024-11-30', 'Present'),
(243, 30, '2024-11-30', 'Present'),
(244, 59, '2024-11-30', 'Present'),
(245, 96, '2024-11-30', 'Present'),
(246, 18, '2024-11-30', 'Present'),
(247, 83, '2024-11-30', 'Present'),
(248, 66, '2024-11-30', 'Present'),
(249, 39, '2024-11-30', 'Present'),
(250, 52, '2024-11-30', 'Present'),
(251, 91, '2024-11-30', 'Present'),
(252, 26, '2024-11-30', 'Present'),
(253, 70, '2024-11-30', 'Present'),
(254, 44, '2024-11-30', 'Present'),
(255, 90, '2024-11-30', 'Present'),
(256, 34, '2024-11-30', 'Present'),
(257, 60, '2024-11-30', 'Present'),
(258, 48, '2024-11-30', 'Present'),
(259, 93, '2024-11-30', 'Present'),
(260, 13, '2024-11-30', 'Present'),
(261, 80, '2024-11-30', 'Present'),
(262, 31, '2024-11-30', 'Present'),
(263, 57, '2024-11-30', 'Present'),
(264, 97, '2024-11-30', 'Present'),
(265, 20, '2024-11-30', 'Present'),
(266, 86, '2024-11-30', 'Present'),
(267, 68, '2024-11-30', 'Present'),
(268, 40, '2024-11-30', 'Present'),
(269, 53, '2024-11-30', 'Present'),
(270, 92, '2024-11-30', 'Absent'),
(271, 27, '2024-11-30', 'On Leave'),
(272, 74, '2024-11-30', 'Present'),
(273, 42, '2024-11-30', 'Present'),
(274, 88, '2024-11-30', 'Present'),
(275, 35, '2024-11-30', 'Present'),
(276, 62, '2024-11-30', 'Present'),
(277, 49, '2024-11-30', 'Present'),
(278, 94, '2024-11-30', 'Present'),
(279, 15, '2024-11-30', 'Present'),
(280, 81, '2024-11-30', 'Present'),
(281, 32, '2024-11-30', 'Present'),
(282, 58, '2024-11-30', 'Present'),
(283, 98, '2024-11-30', 'Absent'),
(284, 23, '2024-11-30', 'On Leave'),
(285, 76, '2024-11-30', 'Present'),
(286, 45, '2024-11-30', 'Present'),
(287, 89, '2024-11-30', 'Present'),
(288, 36, '2024-11-30', 'Present'),
(289, 61, '2024-11-30', 'Present'),
(290, 50, '2024-11-30', 'Present'),
(291, 93, '2024-11-30', 'Present'),
(292, 16, '2024-11-30', 'Present'),
(293, 82, '2024-11-30', 'Present'),
(294, 33, '2024-11-30', 'Present'),
(295, 59, '2024-11-30', 'Present'),
(296, 96, '2024-11-30', 'Present'),
(297, 21, '2024-11-30', 'Present'),
(298, 85, '2024-11-30', 'Present'),
(299, 67, '2024-11-30', 'Present'),
(300, 41, '2024-11-30', 'Present'),
(301, 91, '2024-11-30', 'Present'),
(302, 29, '2024-11-30', 'Present'),
(303, 56, '2024-11-30', 'Present'),
(304, 13, '2024-11-30', 'Present'),
(305, 98, '2024-11-30', 'Absent'),
(306, 22, '2024-11-30', 'On Leave'),
(307, 75, '2024-11-30', 'Present'),
(308, 49, '2024-11-30', 'Present'),
(309, 88, '2024-11-30', 'Present'),
(310, 31, '2024-11-30', 'Present'),
(311, 62, '2024-11-30', 'Present'),
(312, 46, '2024-11-30', 'Present'),
(313, 93, '2024-11-30', 'Present'),
(314, 11, '2024-11-30', 'Present'),
(315, 79, '2024-11-30', 'Present'),
(316, 29, '2024-11-30', 'Present'),
(317, 58, '2024-11-30', 'Present'),
(318, 95, '2024-11-30', 'Present'),
(319, 17, '2024-11-30', 'Present'),
(320, 84, '2024-11-30', 'Present'),
(321, 65, '2024-11-30', 'Present'),
(322, 38, '2024-11-30', 'Present'),
(323, 51, '2024-11-30', 'Present'),
(324, 92, '2024-11-30', 'Absent'),
(325, 25, '2024-11-30', 'On Leave'),
(326, 71, '2024-11-30', 'Present'),
(327, 43, '2024-11-30', 'Present'),
(328, 89, '2024-11-30', 'Present'),
(329, 33, '2024-11-30', 'Present'),
(330, 61, '2024-11-30', 'Present'),
(331, 47, '2024-11-30', 'Present'),
(332, 94, '2024-11-30', 'Present'),
(333, 12, '2024-11-30', 'Present'),
(334, 78, '2024-11-30', 'Present'),
(335, 30, '2024-11-30', 'Present'),
(336, 59, '2024-11-30', 'Present'),
(337, 96, '2024-11-30', 'Present'),
(338, 18, '2024-11-30', 'Present'),
(339, 83, '2024-11-30', 'Present'),
(340, 66, '2024-11-30', 'Present'),
(341, 39, '2024-11-30', 'Present'),
(342, 52, '2024-11-30', 'Present'),
(343, 91, '2024-11-30', 'Present'),
(344, 26, '2024-11-30', 'Present'),
(345, 70, '2024-11-30', 'Present'),
(346, 44, '2024-11-30', 'Present'),
(347, 90, '2024-11-30', 'Present'),
(348, 34, '2024-11-30', 'Present'),
(349, 60, '2024-11-30', 'Present'),
(350, 48, '2024-11-30', 'Present'),
(351, 93, '2024-11-30', 'Present'),
(352, 13, '2024-11-30', 'Present'),
(353, 80, '2024-11-30', 'Present'),
(354, 31, '2024-11-30', 'Present'),
(355, 57, '2024-11-30', 'Present'),
(356, 97, '2024-11-30', 'Present'),
(357, 20, '2024-11-30', 'Present'),
(358, 86, '2024-11-30', 'Present'),
(359, 68, '2024-11-30', 'Present'),
(360, 40, '2024-11-30', 'Present'),
(361, 53, '2024-11-30', 'Present'),
(362, 92, '2024-11-30', 'Absent'),
(363, 27, '2024-11-30', 'On Leave'),
(364, 74, '2024-11-30', 'Present'),
(365, 42, '2024-11-30', 'Present'),
(366, 88, '2024-11-30', 'Present'),
(367, 35, '2024-11-30', 'Present'),
(368, 62, '2024-11-30', 'Present'),
(369, 49, '2024-11-30', 'Present'),
(370, 94, '2024-11-30', 'Present'),
(371, 15, '2024-11-30', 'Present'),
(372, 81, '2024-11-30', 'Present'),
(373, 32, '2024-11-30', 'Present'),
(374, 58, '2024-11-30', 'Present'),
(375, 98, '2024-11-30', 'Absent'),
(376, 23, '2024-11-30', 'On Leave'),
(377, 76, '2024-11-30', 'Present'),
(378, 45, '2024-11-30', 'Present'),
(379, 89, '2024-11-30', 'Present'),
(380, 36, '2024-11-30', 'Present'),
(381, 61, '2024-11-30', 'Present'),
(382, 50, '2024-11-30', 'Present'),
(383, 93, '2024-11-30', 'Present'),
(384, 16, '2024-11-30', 'Present'),
(385, 82, '2024-11-30', 'Present'),
(386, 33, '2024-11-30', 'Present'),
(387, 59, '2024-11-30', 'Present'),
(388, 96, '2024-11-30', 'Present'),
(389, 21, '2024-11-30', 'Present'),
(390, 85, '2024-11-30', 'Present'),
(391, 67, '2024-11-30', 'Present'),
(392, 41, '2024-11-30', 'Present'),
(393, 91, '2024-11-30', 'Present'),
(394, 29, '2024-11-30', 'Present'),
(395, 56, '2024-11-30', 'Present'),
(396, 13, '2024-11-30', 'Present'),
(397, 98, '2024-11-30', 'Absent'),
(398, 22, '2024-11-30', 'On Leave'),
(399, 75, '2024-11-30', 'Present'),
(400, 49, '2024-11-30', 'Present'),
(401, 88, '2024-11-30', 'Present'),
(402, 31, '2024-11-30', 'Present'),
(403, 62, '2024-11-30', 'Present'),
(404, 46, '2024-11-30', 'Present'),
(405, 93, '2024-11-30', 'Present'),
(406, 11, '2024-11-30', 'Present'),
(407, 79, '2024-11-30', 'Present'),
(408, 29, '2024-11-30', 'Present'),
(409, 58, '2024-11-30', 'Present'),
(410, 95, '2024-11-30', 'Present'),
(411, 17, '2024-11-30', 'Present'),
(412, 84, '2024-11-30', 'Present'),
(413, 65, '2024-11-30', 'Present'),
(414, 38, '2024-11-30', 'Present'),
(415, 51, '2024-11-30', 'Present'),
(416, 92, '2024-11-30', 'Absent'),
(417, 25, '2024-11-30', 'On Leave'),
(418, 71, '2024-11-30', 'Present'), 
(419, 43, '2024-11-30', 'Present'),
(420, 89, '2024-11-30', 'Present'),
(421, 33, '2024-11-30', 'Present'),
(422, 61, '2024-11-30', 'Present'),
(423, 47, '2024-11-30', 'Present'),
(424, 94, '2024-11-30', 'Present'),
(425, 12, '2024-11-30', 'Present'),
(426, 78, '2024-11-30', 'Present'),
(427, 30, '2024-11-30', 'Present'),
(428, 59, '2024-11-30', 'Present'),
(429, 96, '2024-11-30', 'Present'),
(430, 18, '2024-11-30', 'Present');

select * from LeaveRequests;
INSERT INTO LeaveRequests VALUES
('L01', 3, 'Sick Leave', '2024-11-05', '2024-11-07', 'Approved'),
('L02', 7, 'Casual Leave', '2024-11-02', '2024-11-02', 'Pending'),
('L03', 9, 'Paid Leave', '2024-11-10', '2024-11-12', 'Approved'),
('L04', 12, 'Maternity Leave', '2024-11-15', '2024-11-25', 'Pending'),
('L05', 15, 'Sick Leave', '2024-11-03', '2024-11-04', 'Rejected'),
('L06', 18, 'Paid Leave', '2024-11-12', '2024-11-14', 'Pending'),
('L07', 21, 'Casual Leave', '2024-11-07', '2024-11-07', 'Approved'),
('L08', 24, 'Sick Leave', '2024-11-01', '2024-11-03', 'Approved'),
('L09', 27, 'Maternity Leave', '2024-11-06', '2024-11-20', 'Pending'),
('L10', 30, 'Sick Leave', '2024-11-09', '2024-11-11', 'Rejected'),
('L11', 33, 'Casual Leave', '2024-11-03', '2024-11-03', 'Approved'),
('L12', 36, 'Paid Leave', '2024-11-13', '2024-11-15', 'Approved'),
('L13', 39, 'Sick Leave', '2024-11-10', '2024-11-12', 'Pending'),
('L14', 42, 'Casual Leave', '2024-11-02', '2024-11-02', 'Pending'),
('L15', 45, 'Maternity Leave', '2024-11-18', '2024-11-22', 'Approved'),
('L16', 48, 'Sick Leave', '2024-11-11', '2024-11-13', 'Pending'),
('L17', 51, 'Paid Leave', '2024-11-04', '2024-11-06', 'Approved'),
('L18', 54, 'Casual Leave', '2024-11-06', '2024-11-06', 'Rejected'),
('L19', 57, 'Sick Leave', '2024-11-08', '2024-11-10', 'Approved'),
('L20', 60, 'Paid Leave', '2024-11-20', '2024-11-22', 'Pending'),
('L21', 63, 'Maternity Leave', '2024-11-03', '2024-11-10', 'Approved'),
('L22', 66, 'Casual Leave', '2024-11-09', '2024-11-09', 'Pending'),
('L23', 69, 'Paid Leave', '2024-11-12', '2024-11-14', 'Approved'),
('L24', 72, 'Sick Leave', '2024-11-07', '2024-11-09', 'Approved'),
('L25', 75, 'Casual Leave', '2024-11-05', '2024-11-05', 'Rejected'),
('L26', 78, 'Paid Leave', '2024-11-14', '2024-11-16', 'Pending'),
('L27', 81, 'Sick Leave', '2024-11-11', '2024-11-13', 'Pending'),
('L28', 84, 'Maternity Leave', '2024-11-04', '2024-11-10', 'Approved'),
('L29', 87, 'Casual Leave', '2024-11-01', '2024-11-01', 'Approved'),
('L30', 90, 'Paid Leave', '2024-11-08', '2024-11-10', 'Pending');

select * from Shifts;
INSERT INTO Shifts VALUES
('SH1', 'Morning Shift', '06:00:00', '15:00:00', 60),
('SH2', 'General Shift', '09:00:00', '17:00:00', 45),
('SH3', 'Afternoon Shift', '12:30:00', '21:30:00', 60),
('SH4', 'Night Shift', '21:00:00', '06:00:00', 60),
('SH5', 'Weekend Shift', '10:00:00', '18:00:00', 60);


INSERT INTO Payroll (PayrollID, EmployeeID, BaseSalary, Bonus, Deductions, PayPeriodStart, PayPeriodEnd) VALUES
('PR01', 1, 45000.00, 1500.00, 500.00, '2024-11-01', '2024-11-30'),
('PR02', 2, 50000.00, 2000.00, 450.00, '2024-11-01', '2024-11-30'),
('PR03', 3, 55000.00, 2200.00, 600.00, '2024-11-01', '2024-11-30'),
('PR04', 4, 47000.00, 1800.00, 550.00, '2024-11-01', '2024-11-30'),
('PR05', 5, 52000.00, 1500.00, 500.00, '2024-11-01', '2024-11-30'),
('PR06', 6, 48000.00, 1700.00, 400.00, '2024-11-01', '2024-11-30'),
('PR07', 7, 46000.00, 1300.00, 350.00, '2024-11-01', '2024-11-30'),
('PR08', 8, 53000.00, 1600.00, 450.00, '2024-11-01', '2024-11-30'),
('PR09', 9, 60000.00, 2500.00, 600.00, '2024-11-01', '2024-11-30'),
('PR10', 10, 49000.00, 1200.00, 400.00, '2024-11-01', '2024-11-30'),
('PR11', 11, 51000.00, 1900.00, 500.00, '2024-11-01', '2024-11-30'),
('PR12', 12, 55000.00, 1800.00, 700.00, '2024-11-01', '2024-11-30'),
('PR13', 13, 54000.00, 2000.00, 600.00, '2024-11-01', '2024-11-30'),
('PR14', 14, 47000.00, 1500.00, 400.00, '2024-11-01', '2024-11-30'),
('PR15', 15, 48000.00, 1400.00, 450.00, '2024-11-01', '2024-11-30'),
('PR16', 16, 52000.00, 2100.00, 550.00, '2024-11-01', '2024-11-30'),
('PR17', 17, 49000.00, 1600.00, 500.00, '2024-11-01', '2024-11-30'),
('PR18', 18, 62000.00, 3000.00, 800.00, '2024-11-01', '2024-11-30'),
('PR19', 19, 51000.00, 2000.00, 450.00, '2024-11-01', '2024-11-30'),
('PR20', 20, 54000.00, 1800.00, 600.00, '2024-11-01', '2024-11-30'),
('PR21', 21, 46000.00, 1500.00, 500.00, '2024-11-01', '2024-11-30'),
('PR22', 22, 48000.00, 1700.00, 400.00, '2024-11-01', '2024-11-30'),
('PR23', 23, 53000.00, 1600.00, 450.00, '2024-11-01', '2024-11-30'),
('PR24', 24, 51000.00, 1900.00, 500.00, '2024-11-01', '2024-11-30'),
('PR25', 25, 47000.00, 1800.00, 550.00, '2024-11-01', '2024-11-30'),
('PR26', 26, 52000.00, 1500.00, 500.00, '2024-11-01', '2024-11-30'),
('PR27', 27, 56000.00, 2100.00, 600.00, '2024-11-01', '2024-11-30'),
('PR28', 28, 54000.00, 2200.00, 650.00, '2024-11-01', '2024-11-30'),
('PR29', 29, 51000.00, 1800.00, 500.00, '2024-11-01', '2024-11-30'),
('PR30', 30, 48000.00, 1400.00, 450.00, '2024-11-01', '2024-11-30'),
('PR31', 31, 53000.00, 1600.00, 550.00, '2024-11-01', '2024-11-30'),
('PR32', 32, 50000.00, 1500.00, 400.00, '2024-11-01', '2024-11-30'),
('PR33', 33, 52000.00, 1800.00, 450.00, '2024-11-01', '2024-11-30'),
('PR34', 34, 55000.00, 2000.00, 500.00, '2024-11-01', '2024-11-30'),
('PR35', 35, 48000.00, 1700.00, 600.00, '2024-11-01', '2024-11-30'),
('PR36', 36, 51000.00, 1400.00, 450.00, '2024-11-01', '2024-11-30'),
('PR37', 37, 56000.00, 2100.00, 700.00, '2024-11-01', '2024-11-30'),
('PR38', 38, 54000.00, 1800.00, 500.00, '2024-11-01', '2024-11-30'),
('PR39', 39, 48000.00, 1500.00, 400.00, '2024-11-01', '2024-11-30'),
('PR40', 40, 50000.00, 2000.00, 600.00, '2024-11-01', '2024-11-30'),
('PR41', 41, 55000.00, 1800.00, 450.00, '2024-11-01', '2024-11-30'),
('PR42', 42, 51000.00, 1900.00, 500.00, '2024-11-01', '2024-11-30'),
('PR43', 43, 48000.00, 1700.00, 400.00, '2024-11-01', '2024-11-30'),
('PR44', 44, 52000.00, 1600.00, 450.00, '2024-11-01', '2024-11-30'),
('PR45', 45, 49000.00, 1500.00, 500.00, '2024-11-01', '2024-11-30'),
('PR46', 46, 47000.00, 1300.00, 350.00, '2024-11-01', '2024-11-30'),
('PR47', 47, 46000.00, 1400.00, 400.00, '2024-11-01', '2024-11-30'),
('PR48', 48, 54000.00, 2200.00, 600.00, '2024-11-01', '2024-11-30'),
('PR49', 49, 55000.00, 2000.00, 500.00, '2024-11-01', '2024-11-30'),
('PR50', 50, 51000.00, 1800.00, 550.00, '2024-11-01', '2024-11-30'),
('PR51', 51, 53000.00, 1500.00, 400.00, '2024-11-01', '2024-11-30'),
('PR52', 52, 54000.00, 2000.00, 450.00, '2024-11-01', '2024-11-30'),
('PR53', 53, 50000.00, 1900.00, 500.00, '2024-11-01', '2024-11-30'),
('PR54', 54, 55000.00, 2100.00, 600.00, '2024-11-01', '2024-11-30'),
('PR55', 55, 46000.00, 1400.00, 350.00, '2024-11-01', '2024-11-30'),
('PR56', 56, 48000.00, 1600.00, 500.00, '2024-11-01', '2024-11-30'),
('PR57', 57, 52000.00, 1800.00, 450.00, '2024-11-01', '2024-11-30'),
('PR58', 58, 53000.00, 1500.00, 400.00, '2024-11-01', '2024-11-30'),
('PR59', 59, 54000.00, 1900.00, 550.00, '2024-11-01', '2024-11-30'),
('PR60', 60, 49000.00, 1700.00, 450.00, '2024-11-01', '2024-11-30'),
('PR61', 61, 50000.00, 2000.00, 600.00, '2024-11-01', '2024-11-30'),
('PR62', 62, 53000.00, 2100.00, 650.00, '2024-11-01', '2024-11-30'),
('PR63', 63, 56000.00, 2200.00, 700.00, '2024-11-01', '2024-11-30'),
('PR64', 64, 52000.00, 1500.00, 400.00, '2024-11-01', '2024-11-30'),
('PR65', 65, 54000.00, 1800.00, 450.00, '2024-11-01', '2024-11-30'),
('PR66', 66, 51000.00, 1600.00, 400.00, '2024-11-01', '2024-11-30'),
('PR67', 67, 53000.00, 1700.00, 500.00, '2024-11-01', '2024-11-30'),
('PR68', 68, 49000.00, 1500.00, 450.00, '2024-11-01', '2024-11-30'),
('PR69', 69, 56000.00, 2000.00, 600.00, '2024-11-01', '2024-11-30'),
('PR70', 70, 48000.00, 1400.00, 350.00, '2024-11-01', '2024-11-30'),
('PR71', 71, 51000.00, 1900.00, 500.00, '2024-11-01', '2024-11-30'),
('PR72', 72, 50000.00, 1800.00, 450.00, '2024-11-01', '2024-11-30'),
('PR73', 73, 54000.00, 2200.00, 600.00, '2024-11-01', '2024-11-30'),
('PR74', 74, 55000.00, 2500.00, 650.00, '2024-11-01', '2024-11-30'),
('PR75', 75, 53000.00, 2100.00, 550.00, '2024-11-01', '2024-11-30'),
('PR76', 76, 47000.00, 1600.00, 450.00, '2024-11-01', '2024-11-30'),
('PR77', 77, 46000.00, 1400.00, 400.00, '2024-11-01', '2024-11-30'),
('PR78', 78, 52000.00, 1500.00, 400.00, '2024-11-01', '2024-11-30'),
('PR79', 79, 55000.00, 2300.00, 600.00, '2024-11-01', '2024-11-30'),
('PR80', 80, 51000.00, 1600.00, 500.00, '2024-11-01', '2024-11-30'),
('PR81', 81, 53000.00, 1800.00, 450.00, '2024-11-01', '2024-11-30'),
('PR82', 82, 49000.00, 1400.00, 400.00, '2024-11-01', '2024-11-30'),
('PR83', 83, 48000.00, 1500.00, 450.00, '2024-11-01', '2024-11-30'),
('PR84', 84, 51000.00, 2000.00, 550.00, '2024-11-01', '2024-11-30'),
('PR85', 85, 56000.00, 2100.00, 600.00, '2024-11-01', '2024-11-30'),
('PR86', 86, 52000.00, 2200.00, 650.00, '2024-11-01', '2024-11-30'),
('PR87', 87, 54000.00, 1900.00, 500.00, '2024-11-01', '2024-11-30'),
('PR88', 88, 47000.00, 1500.00, 400.00, '2024-11-01', '2024-11-30'),
('PR89', 89, 48000.00, 1600.00, 450.00, '2024-11-01', '2024-11-30'),
('PR90', 90, 52000.00, 1700.00, 500.00, '2024-11-01', '2024-11-30'),
('PR91', 91, 55000.00, 2000.00, 550.00, '2024-11-01', '2024-11-30'),
('PR92', 92, 51000.00, 1600.00, 400.00, '2024-11-01', '2024-11-30'),
('PR93', 93, 53000.00, 2100.00, 500.00, '2024-11-01', '2024-11-30'),
('PR94', 94, 56000.00, 2200.00, 600.00, '2024-11-01', '2024-11-30'),
('PR95', 95, 48000.00, 1500.00, 450.00, '2024-11-01', '2024-11-30'),
('PR96', 96, 51000.00, 1600.00, 500.00, '2024-11-01', '2024-11-30'),
('PR97', 97, 50000.00, 2000.00, 550.00, '2024-11-01', '2024-11-30'),
('PR98', 98, 53000.00, 1800.00, 500.00, '2024-11-01', '2024-11-30'),
('PR99', 99, 54000.00, 2000.00, 550.00, '2024-11-01', '2024-11-30'),
('PR100', 100, 55000.00, 2200.00, 600.00, '2024-11-01', '2024-11-30');
/*
Queries
1. Employee Attendance and Leave Management
	Insert Attendance Records for Employee
*/
INSERT INTO Attendance (AttendanceID, EmployeeID, AttendanceDate, Status)
VALUES (201, 1, '2024-11-10', 'Present');

-- View Leave Requests of an Employee
SELECT * FROM LeaveRequests WHERE EmployeeID = 3;

Select * from attendance;  -- Viewing attendance table

-- Approved Leave Requests
SELECT * FROM LeaveRequests WHERE Status = 'Approved';

-- Retrieve names & departments of Employees with Pending Leave requests
show tables;
SELECT e.EmployeeName, d.DepartmentName
FROM employees e
JOIN leaverequests l ON e.EmployeeID = l.EmployeeID
JOIN departments d ON e.DepartmentID = d.DepartmentID
WHERE l.Status = 'Pending';

-- Count Total Leave Requests per Employee
SELECT EmployeeID, COUNT(*) AS TotalLeaves 
FROM LeaveRequests 
GROUP BY EmployeeID;

-- 2. Leave Request Analytics
-- 		Employee Attendance Summary
SELECT EmployeeID, 
SUM(Status = 'Present') AS TotalPresent, 
SUM(Status = 'Absent') AS TotalAbsent
FROM Attendance
GROUP BY EmployeeID;

-- Count of Absent Employees by Department
select * from attendance;
SELECT d.DepartmentName, COUNT(a.EmployeeID) AS TotalAbsent
FROM attendance a
JOIN employees e ON a.EmployeeID = e.EmployeeID
JOIN departments d ON e.DepartmentID = d.DepartmentID
WHERE a.Status = 'Absent'
AND a.AttendanceDate BETWEEN '2024-11-01' AND '2024-11-30'
GROUP BY d.DepartmentName;

-- Count of employees in each department
SELECT d.departmentname, COUNT(e.employeeid) AS total_employees
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
GROUP BY d.departmentid;

-- Employees Who Have Not Taken Any Leave
SELECT e.EmployeeName
FROM Employees e
LEFT JOIN leaverequests l ON e.EmployeeID =l.EmployeeID
WHERE l.LeaveID IS NULL;

-- Employee with Maximum Absence in a Month
SELECT e.EmployeeID, e.EmployeeName, COUNT(a.Status) AS Absence_Count
FROM employees e
JOIN Attendance a ON e.EmployeeID = a.EmployeeID
WHERE a.Status ='Absent'
GROUP BY e.EmployeeID
ORDER BY Absence_Count DESC
LIMIT 1;

-- 3. Employee Trends and Payroll Insights
-- Employees with their latest leave request (showing leave type and approval status)
SELECT e.EmployeeID, e.EmployeeName, l.LeaveType, l.Status
FROM employees e
LEFT JOIN leaverequests l ON e.EmployeeID =l.EmployeeID
WHERE l.StartDate = (
    SELECT MAX(StartDate)
    FROM leaverequests
    WHERE EmployeeID = e.EmployeeID
);

-- Calculate the Total Number of Leave Days Taken by Each Employee
SELECT e.EmployeeID, e.EmployeeName, SUM(DATEDIFF(l.EndDate, l.StartDate)) AS Total_Leave_Days
FROM employees e
JOIN leaverequests l ON e.EmployeeID = l.EmployeeID
GROUP BY e.EmployeeID;
  
-- Payroll details for employees who received a bonus higher than 500
SELECT EmployeeID, PayrollID, BaseSalary, Bonus, Deductions, PayPeriodStart, PayPeriodEnd
FROM Payroll
WHERE Bonus > 500;

-- Update Break Duration for a Specific Shift
select * from shifts;
UPDATE Shifts
SET BreakDuration = 30  -- New break duration set to 30 minutes
WHERE ShiftID = 'SH1';







