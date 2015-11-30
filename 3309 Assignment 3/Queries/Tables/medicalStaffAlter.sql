ALTER TABLE medicalstaff MODIFY COLUMN phoneNumber varchar(20),
ADD CHECK(CPSONumber > 50000000 AND CPSONumber < 99999999),
ADD UNIQUE(phoneNumber);