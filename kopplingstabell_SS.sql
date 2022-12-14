USE iths;

DROP TABLE IF EXISTS StudentSchool;

CREATE TABLE StudentSchool AS SELECT DISTINCT UNF.Id, School.SchoolId
from UNF INNER JOIN School ON UNF.School = School.Name;

ALTER TABLE StudentSchool ADD PRIMARY KEY(Id, SchoolId);

ALTER TABLE StudentSchool MODIFY COLUMN Id INT;

SELECT Id, FirstName, LastName FROM Student
JOIN StudentSchool USING (Id);

SELECT Id, FirstName, LastName, Name, City FROM Student JOIN StudentSchool USING (Id) JOIN School USING (SchoolId);
