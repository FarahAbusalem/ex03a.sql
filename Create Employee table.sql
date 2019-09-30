CREATE TABLE EMPLOYEE(
	    EmployeeNumber Int(255) NOT NULL,
	    FirstName Char(25) NOT NULL,
	    LastName Char(25) NOT NULL,
	    Department Char(35) NOT NULL DEFAULT 'Human Resources',
	    Position Char(35) NULL,
	    Supervisor Int(255) NULL,
	    OfficePhone Char(12) NULL,
	    EmailAddress VarChar(100) NOT NULL UNIQUE,
	    CONSTRAINT Employee_PK PRIMARY KEY(EmployeeNumber),
	    CONSTRAINT EMP_DEPART_FK FOREIGN KEY(Department)
	    REFERENCES Department(DepartmentName)
	    ON UPDATE CASCADE,
	    CONSTRAINT EMP_SUPER_FK FOREIGN KEY(Supervisor)
	    REFERENCES EMPLOYEE(EmployeeNumber)
	    )
