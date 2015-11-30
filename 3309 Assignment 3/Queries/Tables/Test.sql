CREATE TABLE test(
	testID INT NOT NULL,
    testName VARCHAR(200),
    bodyLandmark VARCHAR(200),
    datePreformed DATE NOT NULL,
    datePrescribed DATE,
    results TEXT,
    sitePreformed INT,
    hospitalID INT NOT NULL,
    patientID INT NOT NULL,
    PRIMARY KEY(testID),
    FOREIGN KEY(hospitalID) REFERENCES hospital(hospitalID),
	FOREIGN KEY(patientID) REFERENCES patient(patientID));