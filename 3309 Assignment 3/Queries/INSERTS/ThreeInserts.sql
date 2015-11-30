INSERT INTO hospital VALUES('1','United Medical Center','4847 3rd Street 
Champaign, IL 61821',FLOOR(RAND() * (400 - 300 + 1)) + 300);
INSERT INTO department VALUES(1,'Accident and Emergency',1);
INSERT INTO medicalstaff VALUES('Bob','Ross',1,FLOOR(RAND()*(99999998-50000001 + 1)) + 50000001,'613-555-0142',
	(SELECT departmentID
    FROM department
    WHERE departmentName = 'Accident and Emergency'
    ORDER BY RAND()
    LIMIT 1),'Emergency','M.D',
    (SELECT hospital.hospitalID
    FROM hospital LEFT OUTER JOIN department
    ON hospital.hospitalID = department.hospitalID
    WHERE capacity > 100 AND departmentName ='Accident and Emergency'
    ORDER BY RAND()
    LIMIT 1));
INSERT INTO medicalstaff VALUES('Meshach','Jones',2,FLOOR(RAND()*(99999998-50000001 + 1)) + 50000001,'613-555-0118',
	(SELECT departmentID
    FROM department
    WHERE departmentName = 'Neurology'
    ORDER BY RAND()
    LIMIT 1),'Emergency','M.D',
    (SELECT hospital.hospitalID
    FROM hospital LEFT OUTER JOIN department
    ON hospital.hospitalID = department.hospitalID
    WHERE capacity > 200 AND departmentName ='Neurology'
    ORDER BY RAND()
    LIMIT 1))