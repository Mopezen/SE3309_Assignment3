CREATE VIEW MedicalID908PatientView
AS SELECT p.patientID, p.fName, p.lName, p.phoneNumber, p.address, p.age, p.sex, p.familyDoctorID
		FROM patient p
		WHERE p.medicalStaffID = 908
        ORDER BY p.patientID;