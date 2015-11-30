CREATE TABLE prescription(
	prescriptionID INT NOT NULL,
    medication VARCHAR(200) NOT NULL,
    datePrescribed DATE NOT NULL,
    duration INT DEFAULT 30,
    dosage DECIMAL NOT NULL,
    instructions TEXT,
    resultTestID INT NOT NULL,
    medicalStaffID INT NOT NULL,
    patientID INT NOT NULL,
    PRIMARY KEY(prescriptionID),
    FOREIGN KEY(resultTestID) REFERENCES test(testID),
    FOREIGN KEY(medicalStaffID) REFERENCES medicalStaff(employeeID),
    FOREIGN KEY(patientID) REFERENCES patient(patientID));