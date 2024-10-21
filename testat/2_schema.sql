CREATE TABLE Department (
    DepartmentID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL
);

CREATE TABLE Employee (
    EmployeeID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    BirthDate DATE NOT NULL,
    HireDate DATE NOT NULL,
    TargetHoursAWeek DECIMAL(5, 2) DEFAULT 40,
    DepartmentID INT NOT NULL
);

CREATE TABLE Project (
    ProjectID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL
);

CREATE TABLE Salary (
    SalaryID SERIAL PRIMARY KEY,
    EmployeeID INT NOT NULL,
    Amount DECIMAL(10, 2),
    ValidFrom DATE NOT NULL
);

CREATE TABLE WorkLog (
    WorkLogID SERIAL PRIMARY KEY,
    EmployeeID INT NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    Date DATE NOT NULL
);

CREATE TABLE PerformanceReview (
    ReviewID SERIAL PRIMARY KEY,
    EmployeeID INT NOT NULL,
    Score DECIMAL(5, 2),
    ReviewDate DATE NOT NULL,
    Comments TEXT
);

CREATE TABLE Manager (
    ManagerID SERIAL PRIMARY KEY,
    EmployeeID INT NOT NULL UNIQUE,
    ResponsibilityArea VARCHAR(255) NOT NULL,
    Bonus DECIMAL(10, 2)
);

CREATE TABLE EmployeeProject (
    EmployeeID INT NOT NULL,
    ProjectID INT NOT NULL,
    PRIMARY KEY (EmployeeID, ProjectID)
);

