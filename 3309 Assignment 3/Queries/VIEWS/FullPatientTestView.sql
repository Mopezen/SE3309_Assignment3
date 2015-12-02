CREATE VIEW FullPatientTestView
AS SELECT p.patientID, p.fName, p.lName, p.age, p.sex, p.medicalStaffID, p.familyDoctorID, t.testID, t.testName, t.bodyLandmark, t.datePreformed, t.datePrescribed, t.results, t.sitePreformed, t.hospitalID
		FROM patient p, test t
		WHERE p.patientID = t.patientID
        ORDER BY p.patientID;