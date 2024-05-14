create database ssm;
use ssm; 


-- Table: Classes
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(100),
    TeacherName VARCHAR(100)
);



-- Table: Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);




CREATE TABLE Materials (
    MaterialID INT PRIMARY KEY,
    Title VARCHAR(100),
    Description TEXT,
    FileURL VARCHAR(255),
    UploadDate DATE,
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

-- Table: StudentMaterials (Associative table)
CREATE TABLE StudentMaterials (
    StudentID INT,
    MaterialID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID),
    PRIMARY KEY (StudentID, MaterialID)
);

DESC STUDENTS;
DESC CLASSES;
DESC MATERIALS;
DESC STUDENTMATERIALS;




-- Inserting values into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, Email, ClassID)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 1),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', 1),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', 2),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', 2),
    (5, 'William', 'Wilson', 'william.wilson@example.com', 1),
    (6, 'Sophia', 'Taylor', 'sophia.taylor@example.com', 3),
    (7, 'James', 'Anderson', 'james.anderson@example.com', 3),
    (8, 'Olivia', 'Martinez', 'olivia.martinez@example.com', 3),
    (9, 'Benjamin', 'Thomas', 'benjamin.thomas@example.com', 2),
    (10, 'Ava', 'Hernandez', 'ava.hernandez@example.com', 1),
    (11, 'Ethan', 'Moore', 'ethan.moore@example.com', 2),
    (12, 'Emma', 'Garcia', 'emma.garcia@example.com', 1),
    (13, 'Mia', 'Lee', 'mia.lee@example.com', 3),
    (14, 'Noah', 'Perez', 'noah.perez@example.com', 2),
    (15, 'Isabella', 'Lopez', 'isabella.lopez@example.com', 1),
    (16, 'Liam', 'Scott', 'liam.scott@example.com', 1),
    (17, 'Mason', 'Adams', 'mason.adams@example.com', 2),
    (18, 'Charlotte', 'Rivera', 'charlotte.rivera@example.com', 3),
    (19, 'Amelia', 'Gonzalez', 'amelia.gonzalez@example.com', 2),
    (20, 'Harper', 'Hill', 'harper.hill@example.com', 3),
    (21, 'Evelyn', 'Ramirez', 'evelyn.ramirez@example.com', 1),
    (22, 'Alexander', 'Torres', 'alexander.torres@example.com', 3),
    (23, 'Abigail', 'Nguyen', 'abigail.nguyen@example.com', 1),
    (24, 'Elijah', 'King', 'elijah.king@example.com', 2),
    (25, 'Lily', 'Roberts', 'lily.roberts@example.com', 3);
    
    
    -- Inserting values into the Classes table
INSERT INTO Classes (ClassID, ClassName, TeacherName)
VALUES
    (1, 'Mathematics', 'Mr. Smith'),
    (2, 'Science', 'Ms. Johnson'),
    (3, 'History', 'Mrs. Brown'),
    (4, 'English', 'Mr. Davis'),
    (5, 'Computer Science', 'Dr. Wilson'),
    (6, 'Art', 'Ms. Taylor'),
    (7, 'Physical Education', 'Coach Anderson'),
    (8, 'Music', 'Ms. Martinez'),
    (9, 'Geography', 'Mr. Thomas'),
    (10, 'Chemistry', 'Dr. Hernandez'),
    (11, 'Biology', 'Ms. Moore'),
    (12, 'Physics', 'Mr. Garcia'),
    (13, 'Literature', 'Mrs. Lee'),
    (14, 'Economics', 'Mr. Perez'),
    (15, 'Psychology', 'Dr. Lopez'),
    (16, 'Sociology', 'Ms. Scott'),
    (17, 'Philosophy', 'Mr. Adams'),
    (18, 'Political Science', 'Dr. Rivera'),
    (19, 'Foreign Language', 'Ms. Gonzalez'),
    (20, 'Engineering', 'Dr. Hill'),
    (21, 'Architecture', 'Mr. Ramirez'),
    (22, 'Business', 'Ms. Torres'),
    (23, 'Law', 'Mr. Nguyen'),
    (24, 'Medicine', 'Dr. King'),
    (25, 'Dentistry', 'Dr. Roberts');
    
    
    -- Inserting values into the Materials table
INSERT INTO Materials (MaterialID, Title, Description, FileURL, UploadDate, ClassID)
VALUES
    (1, 'Introduction to Algebra', 'Basic concepts and operations in algebra.', 'http://example.com/algebra.pdf', '2024-05-01', 1),
    (2, 'Chemical Reactions', 'Explanation of chemical reactions and their types.', 'http://example.com/chemical_reactions.pdf', '2024-05-02', 2),
    (3, 'World War II Timeline', 'Timeline of major events during World War II.', 'http://example.com/wwii_timeline.pdf', '2024-05-03', 3),
    (4, 'Shakespearean Sonnets', 'Collection of Shakespearean sonnets with analysis.', 'http://example.com/shakespeare_sonnets.pdf', '2024-05-04', 4),
    (5, 'Introduction to Programming', 'Basics of programming logic and syntax.', 'http://example.com/programming_intro.pdf', '2024-05-05', 5),
    (6, 'Art History: Renaissance', 'Overview of art movements during the Renaissance period.', 'http://example.com/renaissance_art.pdf', '2024-05-06', 6),
    (7, 'Physical Fitness Guide', 'Guide to improve physical fitness with exercises and diet tips.', 'http://example.com/fitness_guide.pdf', '2024-05-07', 7),
    (8, 'Music Theory Basics', 'Fundamental concepts of music theory.', 'http://example.com/music_theory.pdf', '2024-05-08', 8),
    (9, 'Geographical Landforms', 'Description and examples of various geographical landforms.', 'http://example.com/geographical_landforms.pdf', '2024-05-09', 9),
    (10, 'Chemical Equations', 'Explanation of balancing chemical equations.', 'http://example.com/chemical_equations.pdf', '2024-05-10', 10),
    (11, 'Biology Basics', 'Introduction to the fundamentals of biology.', 'http://example.com/biology_basics.pdf', '2024-05-11', 11),
    (12, 'Physics Formulas', 'Commonly used physics formulas and equations.', 'http://example.com/physics_formulas.pdf', '2024-05-12', 12),
    (13, 'Literary Analysis Guide', 'Guide to analyzing literature with examples.', 'http://example.com/literary_analysis_guide.pdf', '2024-05-13', 13),
    (14, 'Economic Principles', 'Basic economic principles and concepts.', 'http://example.com/economic_principles.pdf', '2024-05-14', 14),
    (15, 'Psychological Theories', 'Overview of major psychological theories.', 'http://example.com/psychological_theories.pdf', '2024-05-15', 15),
    (16, 'Sociology: Introduction', 'Introduction to the field of sociology.', 'http://example.com/sociology_intro.pdf', '2024-05-16', 16),
    (17, 'Philosophy: Ethics', 'Exploration of ethical theories in philosophy.', 'http://example.com/philosophy_ethics.pdf', '2024-05-17', 17),
    (18, 'Political Systems', 'Overview of political systems and governance.', 'http://example.com/political_systems.pdf', '2024-05-18', 18),
    (19, 'Spanish Language Basics', 'Basic vocabulary and grammar in Spanish.', 'http://example.com/spanish_basics.pdf', '2024-05-19', 19),
    (20, 'Engineering Principles', 'Fundamental principles of engineering.', 'http://example.com/engineering_principles.pdf', '2024-05-20', 20),
    (21, 'Architectural Design Fundamentals', 'Introduction to architectural design concepts.', 'http://example.com/architectural_design.pdf', '2024-05-21', 21),
    (22, 'Business Management Techniques', 'Techniques and strategies in business management.', 'http://example.com/business_management.pdf', '2024-05-22', 22),
    (23, 'Introduction to Law', 'Basic concepts and principles of law.', 'http://example.com/law_intro.pdf', '2024-05-23', 23),
    (24, 'Medical Terminology', 'Basic medical terminology and vocabulary.', 'http://example.com/medical_terminology.pdf', '2024-05-24', 24),
    (25, 'Dental Anatomy', 'Study of human dental anatomy.', 'http://example.com/dental_anatomy.pdf', '2024-05-25', 25);
    
    
    -- Inserting values into the StudentMaterials table
INSERT INTO StudentMaterials (StudentID, MaterialID)
VALUES
    (1, 1),
    (1, 5),
    (2, 2),
    (3, 3),
    (3, 6),
    (4, 4),
    (5, 1),
    (6, 7),
    (7, 8),
    (8, 9),
    (9, 10),
    (10, 11),
    (11, 12),
    (12, 13),
    (13, 14),
    (14, 15),
    (15, 16),
    (16, 17),
    (17, 18),
    (18, 19),
    (19, 20),
    (20, 21),
    (21, 22),
    (22, 23),
    (23, 24),
    (24, 25);
    

   SELECT FirstName, LastName FROM Students;
    SELECT ClassID, COUNT(*) AS NumberOfStudents FROM Students GROUP BY ClassID;
    select title, description from materials where uploadDate > "2024-05-01";
    select email from students where classId = (select classId from classes where className = "Science");
    
    
    SELECT Title FROM Materials WHERE MaterialID IN (SELECT MaterialID FROM StudentMaterials WHERE StudentID IN (SELECT StudentID FROM Students WHERE LastName = 'Smith'));
     SELECT Email FROM Students WHERE ClassID IN (SELECT ClassID FROM Classes WHERE FirstName ='John');
     SELECT FirstName, LastName FROM Students WHERE ClassID = (SELECT ClassID FROM Students WHERE FirstName = 'John' AND LastName = 'Doe');
     SELECT Title FROM Materials WHERE Description LIKE '%Basics%';
   SELECT COUNT(*) FROM Materials WHERE MaterialID IN (SELECT MaterialID FROM StudentMaterials WHERE StudentID IN (SELECT StudentID FROM Students WHERE Email LIKE '%.com'));
   
   
   SELECT c.ClassName, COUNT(s.StudentID) AS NumberOfStudents
   FROM Classes c
   LEFT JOIN Students s ON c.ClassID = s.ClassID
   GROUP BY c.ClassID, c.ClassName
   ORDER BY NumberOfStudents DESC;
   
   SELECT s.FirstName, s.LastName, c.ClassName
   FROM Students s
   INNER JOIN Classes c ON s.ClassID = c.ClassID;
   
   select m.Title, c.ClassName
   FROM Materials m
   INNER JOIN Classes c ON m.ClassID = c.ClassID;
   
    SELECT s.FirstName, s.LastName, s.Email, c.ClassName
   FROM Students s
   INNER JOIN Classes c ON s.ClassID = c.ClassID
   ORDER BY c.ClassName;
   
   SELECT c.ClassName, COUNT(m.MaterialID) AS NumberOfMaterials
   FROM Classes c
   LEFT JOIN Materials m ON c.ClassID = m.ClassID
   GROUP BY c.ClassID, c.ClassName;
   
   SELECT s.FirstName, s.LastName, m.Title
   FROM Students s
   INNER JOIN StudentMaterials sm ON s.StudentID = sm.StudentID
   INNER JOIN Materials m ON sm.MaterialID = m.MaterialID;
    
    