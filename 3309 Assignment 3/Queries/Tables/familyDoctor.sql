CREATE TABLE familyDoctor(
	fName VARCHAR(20) NOT NULL,
    lName VARCHAR(20) NOT NULL,
	officePhoneNumber VARCHAR(20),
    emergencyContactNumber VARCHAR(12),
    CPSONumber INT NOT NULL,
    officeAddress VARCHAR(60),
    PRIMARY KEY(CPSONumber));