CREATE TABLE department(
	departmentID INT NOT NULL,
    departmentName VARCHAR(40) NOT NULL,
    hospitalID INT,
    PRIMARY KEY(departmentID),
    FOREIGN KEY(hospitalID) REFERENCES hospital(hospitalID) ON DELETE NO ACTION ON UPDATE CASCADE);
    