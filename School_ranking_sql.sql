CREATE DATABASE School_ranking;
USE School_ranking;
CREATE TABLE students(
  student_ID int NOT NULL,
  First_name char(100) NOT NULL,
  Last_name char(100) NOT NULL,
  class varchar(50),
  age int,
  PRIMARY KEY (student_ID)
);
CREATE TABLE Marksheet(
  score varchar(50),
  year year,
  Ranking  float,
  class varchar(50),
  student_ID int
);
ALTER TABLE marksheet
CHANGE ranking ranking varchar(50);
INSERT INTO students(student_ID,first_name,last_name,class,age)
     values (2801,"John","Allen",5,12);
INSERT INTO students(student_ID,first_name,last_name,class,age)
     values (2803,"Julie","Anna",5,11);    
INSERT INTO students(student_ID,first_name,last_name,class,age)
     values (2802,"Satish","Kumar",10,17);  
INSERT INTO students(student_ID,first_name,last_name,class,age)
     values (2804,"Ameen","Hadi",4,10);
 INSERT INTO marksheet(score,year,ranking,class,student_ID)
     values (96,'2021','7th',5,12);
  INSERT INTO marksheet(score,year,ranking,class,student_ID)
     values (83,'2021','10th',4,11); 
  INSERT INTO marksheet(score,year,ranking,class,student_ID)
     values (92,'2022','2nd',7,14);  
      INSERT INTO marksheet(score,year,ranking,class,student_ID)
     values (72,'2021','12th',3,2806);
     
 SELECT student_ID,first_name,last_name FROM students
 WHERE age >=16 AND last_name="kumar";
 
 SELECT * FROM marksheet
 WHERE score BETWEEN 800 AND 1000;
 
ALTER TABLE marksheet
ADD new_score int;
INSERT INTO marksheet(new_score)
     values (5);
SELECT * FROM marksheet
ORDER BY score DESC;     
SELECT * FROM students
WHERE first_name="%a";
 
 
 