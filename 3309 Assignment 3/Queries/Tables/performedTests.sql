CREATE TABLE performedTests(
	medicalstaffID INT NOT NULL,
    testID INT NOT NULL,
	PRIMARY KEY(medicalstaffID, testID),
    FOREIGN KEY(medicalstaffID) REFERENCES medicalStaff(employeeID),
    FOREIGN KEY(testID) REFERENCES test(testID));