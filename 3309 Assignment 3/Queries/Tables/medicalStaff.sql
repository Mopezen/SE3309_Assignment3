CREATE TABLE medicalStaff(
	fName VARCHAR(30),
    lName VARCHAR(30),
    employeeID INT NOT NULL,
    CPSONumber VARCHAR(8) NOT NULL,
    phoneNumber VARCHAR(12),
    departmentID INT(30),
    specialization TEXT(30),
    qualification TEXT,
    hospitalID INT NOT NULL,
    UNIQUE (CPSONumber,phoneNumber),
    PRIMARY KEY(employeeID),
    FOREIGN KEY(departmentID) REFERENCES department(departmentID) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY(hospitalID) REFERENCES hospital(hospitalID) ON DELETE NO ACTION ON UPDATE CASCADE);