ALTER TABLE medicalstaff
ADD CHECK(CPSONumber > 50000000 AND CPSONumber < 99999999),
ADD UNIQUE(phoneNumber);