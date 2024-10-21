-- Add foreign key constraint for Employee
ALTER TABLE Employee
ADD CONSTRAINT fk_department
    FOREIGN KEY (DepartmentID) 
    REFERENCES Department (DepartmentID)
    ON DELETE CASCADE;

ALTER TABLE Project
ADD CHECK (EndDate >= StartDate);

ALTER TABLE Salary
ADD CONSTRAINT fk_employee_salary
    FOREIGN KEY (EmployeeID)
    REFERENCES Employee (EmployeeID)
    ON DELETE CASCADE;

ALTER TABLE WorkLog
ADD CONSTRAINT fk_employee_worklog
    FOREIGN KEY (EmployeeID)
    REFERENCES Employee (EmployeeID)
    ON DELETE CASCADE;

ALTER TABLE PerformanceReview
ADD CONSTRAINT fk_employee_performance
    FOREIGN KEY (EmployeeID)
    REFERENCES Employee (EmployeeID)
    ON DELETE CASCADE;

ALTER TABLE Manager
ADD CONSTRAINT fk_employee_manager
    FOREIGN KEY (EmployeeID)
    REFERENCES Employee (EmployeeID)
    ON DELETE CASCADE;

ALTER TABLE EmployeeProject
ADD CONSTRAINT fk_employee_project
    FOREIGN KEY (EmployeeID)
    REFERENCES Employee (EmployeeID)
    ON DELETE CASCADE,
ADD CONSTRAINT fk_project_employee
    FOREIGN KEY (ProjectID)
    REFERENCES Project (ProjectID)
    ON DELETE CASCADE;

ALTER TABLE Salary
ADD CONSTRAINT chk_min_salary
    CHECK (Amount >= 1500);

ALTER TABLE Employee
ADD CONSTRAINT chk_target_hours
    CHECK (TargetHoursAWeek >= 0);

