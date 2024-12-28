PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_name TEXT NOT NULL,
    instructor TEXT NOT NULL,
    duration_hours INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO courses VALUES(1,'Python Programming','John Smith',30,299.990000000000009,'2024-11-30 05:35:31');
INSERT INTO courses VALUES(2,'Web Development','Sarah Johnson',40,399.990000000000009,'2024-11-30 05:35:31');
INSERT INTO courses VALUES(3,'Data Science','Michael Brown',45,499.990000000000009,'2024-11-30 05:35:31');
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT,
    registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO students VALUES(1,'Alice','Wilson','alice.wilson@email.com','123-456-7890','2024-11-30 05:35:32');
INSERT INTO students VALUES(2,'Bob','Anderson','bob.anderson@email.com','234-567-8901','2024-11-30 05:35:32');
INSERT INTO students VALUES(3,'Charlie','Davis','charlie.davis@email.com','345-678-9012','2024-11-30 05:35:32');
CREATE TABLE course_enrollments (
    enrollment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    course_id INTEGER,
    enrollment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TEXT DEFAULT 'active',
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO course_enrollments VALUES(1,1,1,'2024-11-30 05:35:33','active');
INSERT INTO course_enrollments VALUES(2,1,2,'2024-11-30 05:35:33','active');
INSERT INTO course_enrollments VALUES(3,2,1,'2024-11-30 05:35:33','active');
INSERT INTO course_enrollments VALUES(4,3,3,'2024-11-30 05:35:33','active');
CREATE TABLE attendance (
    attendance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    course_id INTEGER,
    attendance_date DATE NOT NULL,
    status TEXT CHECK(status IN ('present', 'absent', 'late')) NOT NULL,
    notes TEXT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO attendance VALUES(1,1,1,'2024-01-15','present',NULL);
INSERT INTO attendance VALUES(2,1,1,'2024-01-16','present',NULL);
INSERT INTO attendance VALUES(3,1,1,'2024-01-17','late','Arrived 15 minutes late');
INSERT INTO attendance VALUES(4,2,1,'2024-01-15','present',NULL);
INSERT INTO attendance VALUES(5,2,1,'2024-01-16','absent','Sick leave');
INSERT INTO attendance VALUES(6,3,3,'2024-01-15','present',NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('courses',3);
INSERT INTO sqlite_sequence VALUES('students',3);
INSERT INTO sqlite_sequence VALUES('course_enrollments',4);
INSERT INTO sqlite_sequence VALUES('attendance',6);
COMMIT;
