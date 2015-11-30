CREATE TABLE patient(
	patientID INT NOT NULL,
    fName VARCHAR(20),
    lName VARCHAR(20),
    phoneNumber VARCHAR(12),
    address VARCHAR(200),
    age INT NOT NULL,
    sex CHAR(1) CHECK(VALUE IN('M','F')),
    medicalStaffID INT NOT NULL,
    familyDoctorID INT,
    PRIMARY KEY(patientID),
    FOREIGN KEY(medicalStaffID) REFERENCES medicalstaff(employeeID) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(familyDoctorID) REFERENCES familydoctor(CPSONumber) ON DELETE NO ACTION ON UPDATE NO ACTION
    );
    
