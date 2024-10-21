-- Insert data into Department
INSERT INTO Department (Name, Location) VALUES
('IT', 'Berlin'),
('HR', 'Munich'),
('Finance', 'Hamburg'),
('Marketing', 'Cologne'),
('Sales', 'Frankfurt'),
('Customer Support', 'Düsseldorf'),
('Research & Development', 'Stuttgart'),
('Operations', 'Leipzig'),
('Logistics', 'Nuremberg'),
('Legal', 'Bremen');

-- Insert data into Employee
INSERT INTO Employee (FirstName, LastName, BirthDate, HireDate, TargetHoursAWeek, DepartmentID) VALUES
('Max', 'Müller', '1990-01-15', '2020-02-01', 40, 1),
('Anna', 'Schmidt', '1985-03-22', '2019-04-15', 40, 2),
('Peter', 'Schneider', '1992-06-10', '2021-05-01', 40, 1),
('Laura', 'Fischer', '1988-11-30', '2018-03-01', 40, 3),
('Tim', 'Weber', '1995-12-18', '2022-01-10', 40, 4),
('Sophie', 'Meyer', '1987-07-25', '2017-08-15', 40, 5),
('Lukas', 'Klein', '1993-02-14', '2020-09-20', 40, 6),
('Marie', 'Wagner', '1991-05-05', '2019-10-10', 40, 7),
('Tom', 'Hoffmann', '1989-04-11', '2023-03-25', 40, 8),
('Julia', 'Schultz', '1986-09-28', '2022-12-12', 40, 9);

-- Insert data into Project
INSERT INTO Project (Name, StartDate, EndDate) VALUES
('Project A', '2023-01-01', '2023-12-31'),
('Project B', '2023-02-01', '2023-11-30'),
('Project C', '2023-03-01', '2023-10-15'),
('Project D', '2023-04-01', '2023-12-01'),
('Project E', '2023-05-01', '2023-09-30'),
('Project F', '2023-06-01', '2023-10-31'),
('Project G', '2023-07-01', '2023-12-15'),
('Project H', '2023-08-01', '2023-11-01'),
('Project I', '2023-09-01', '2023-12-10'),
('Project J', '2023-10-01', '2024-01-31');

-- Insert data into Salary
INSERT INTO Salary (EmployeeID, Amount, ValidFrom) VALUES
(1, 2500.00, '2020-02-01'),
(2, 3000.00, '2019-04-15'),
(3, 2700.00, '2021-05-01'),
(4, 3200.00, '2018-03-01'),
(5, 2900.00, '2022-01-10'),
(6, 3100.00, '2017-08-15'),
(7, 2800.00, '2020-09-20'),
(8, 3300.00, '2019-10-10'),
(9, 2600.00, '2023-03-25'),
(10, 3400.00, '2022-12-12');

-- Insert data into WorkLog
INSERT INTO WorkLog (EmployeeID, StartTime, EndTime, Date) VALUES
(1, '09:00', '17:00', '2023-10-01'),
(2, '09:00', '17:00', '2023-10-02'),
(3, '09:00', '17:00', '2023-10-03'),
(4, '09:00', '17:00', '2023-10-04'),
(5, '09:00', '17:00', '2023-10-05'),
(6, '09:00', '17:00', '2023-10-06'),
(7, '09:00', '17:00', '2023-10-07'),
(8, '09:00', '17:00', '2023-10-08'),
(9, '09:00', '17:00', '2023-10-09'),
(10, '09:00', '17:00', '2023-10-10');

-- Insert data into PerformanceReview
INSERT INTO PerformanceReview (EmployeeID, Score, ReviewDate, Comments) VALUES
(1, 8.5, '2023-06-15', 'Excellent performance and teamwork.'),
(2, 7.0, '2023-07-20', 'Good performance but needs improvement in communication.'),
(3, 9.0, '2023-08-15', 'Outstanding work on the recent project.'),
(4, 6.5, '2023-05-10', 'Satisfactory but room for growth.'),
(5, 8.0, '2023-09-05', 'Very good performance overall.'),
(6, 7.5, '2023-06-25', 'Good contributions to team goals.'),
(7, 9.0, '2023-07-15', 'Exceptional performance and initiative.'),
(8, 7.0, '2023-08-01', 'Good job but needs to meet deadlines more consistently.'),
(9, 8.5, '2023-09-15', 'Strong performance, especially in customer relations.'),
(10, 6.0, '2023-10-05', 'Needs to focus more on quality of work.');

-- Insert data into Manager
INSERT INTO Manager (EmployeeID, ResponsibilityArea, Bonus) VALUES
(1, 'IT Operations', 1500.00),
(2, 'HR Management', 1200.00),
(3, 'Finance Strategy', 1800.00),
(4, 'Marketing Initiatives', 1700.00),
(5, 'Sales Growth', 1600.00),
(6, 'Customer Support Excellence', 1400.00),
(7, 'R&D Projects', 2000.00),
(8, 'Logistics Optimization', 1500.00),
(9, 'Legal Compliance', 1300.00),
(10, 'Operations Efficiency', 1550.00);

-- Insert data into EmployeeProject (Many-to-Many relationship)
INSERT INTO EmployeeProject (EmployeeID, ProjectID) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(3, 4),
(4, 4),
(4, 5),
(5, 5),
(5, 6),
(6, 6),
(6, 7),
(7, 7),
(7, 8),
(8, 8),
(8, 9),
(9, 9),
(9, 10),
(10, 10),
(10, 1);

