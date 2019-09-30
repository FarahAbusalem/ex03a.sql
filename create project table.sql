CREATE TABLE PROJECT (
	    ProjectID Int(255) NOT NULL,
	    ProjectName Char(50) NOT NULL,
	    Department Char(35) NOT NULL,
	    MaxHours Int(255) NOT NULL DEFAULT 100,
	    StartDate Date NULL,
	    EndDate Date NULL,
	    CONSTRAINT PROJECT_PK PRIMARY KEY(ProjectID),
	    CONSTRAINT PROJ_DEPART_FK FOREIGN KEY(Department)
	    REFERENCES Department(DepartmentName)
	    ON UPDATE CASCADE
	    )
