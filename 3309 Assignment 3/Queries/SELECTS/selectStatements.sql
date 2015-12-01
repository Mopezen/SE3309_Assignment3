SELECT * FROM medicalStaff WHERE qualification = 'Top 10% in respective field';
SELECT * FROM familyDoctor WHERE CPSONumber BETWEEN 10000 AND 10010;
SELECT * FROM medicalStaff WHERE specialization LIKE '%Oct%';
SELECT medicalStaff.fName, medicalStaff.lName 
FROM medicalStaff 
JOIN familydoctor ON familydoctor.CPSONumber = medicalstaff.CPSONumber
ORDER BY lName;
SELECT CPSONumber FROM medicalStaff UNION SELECT CPSONumber FROM familydoctor
