DELETE FROM prescription 
WHERE medicalStaffID = (SELECT medicalStaffID FROM medicalstaff WHERE lName LIKE '%Free%' ORDER BY RAND() LIMIT 1);
UPDATE medicalStaff
SET hospitalID = (SELECT hospitalID FROM department WHERE departmentName = "Cardiology" ORDER BY RAND() LIMIT 1) 
WHERE departmentID = (SELECT departmentID FROM department WHERE departmentName="Cardiology" ORDER BY RAND() LIMIT 1);
UPDATE patient
SET medicalStaffID = (SELECT employeeID FROM medicalstaff WHERE specialization IN ('Orthopaedics','Maternity','Anaesthetics') ORDER BY RAND() LIMIT 1)
WHERE patientID = 54;
