-- Create the database schema

-- Courses table
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_name TEXT NOT NULL,
    instructor TEXT NOT NULL,
    duration_hours INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Students table
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT,
    registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Course Enrollments table (many-to-many relationship between students and courses)
CREATE TABLE course_enrollments (
    enrollment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    course_id INTEGER,
    enrollment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TEXT DEFAULT 'active',
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Attendance table
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

-- Insert sample data

-- Insert courses
INSERT INTO courses (course_name, instructor, duration_hours, price) VALUES
('Python Programming', 'John Smith', 30, 299.99),
('Web Development', 'Sarah Johnson', 40, 399.99),
('Data Science', 'Michael Brown', 45, 499.99);

-- Insert students
INSERT INTO students (first_name, last_name, email, phone) VALUES
('Alice', 'Wilson', 'alice.wilson@email.com', '123-456-7890'),
('Bob', 'Anderson', 'bob.anderson@email.com', '234-567-8901'),
('Charlie', 'Davis', 'charlie.davis@email.com', '345-678-9012');

-- Insert course enrollments
INSERT INTO course_enrollments (student_id, course_id) VALUES
(1, 1),  -- Alice enrolled in Python Programming
(1, 2),  -- Alice enrolled in Web Development
(2, 1),  -- Bob enrolled in Python Programming
(3, 3);  -- Charlie enrolled in Data Science

-- Insert attendance records
INSERT INTO attendance (student_id, course_id, attendance_date, status, notes) VALUES
(1, 1, '2024-01-15', 'present', NULL),
(1, 1, '2024-01-16', 'present', NULL),
(1, 1, '2024-01-17', 'late', 'Arrived 15 minutes late'),
(2, 1, '2024-01-15', 'present', NULL),
(2, 1, '2024-01-16', 'absent', 'Sick leave'),
(3, 3, '2024-01-15', 'present', NULL);

-- Useful queries

-- 1. Get student attendance report for a specific course
SELECT 
    s.first_name,
    s.last_name,
    c.course_name,
    COUNT(CASE WHEN a.status = 'present' THEN 1 END) as present_count,
    COUNT(CASE WHEN a.status = 'absent' THEN 1 END) as absent_count,
    COUNT(CASE WHEN a.status = 'late' THEN 1 END) as late_count
FROM students s
JOIN attendance a ON s.student_id = a.student_id
JOIN courses c ON a.course_id = c.course_id
GROUP BY s.student_id, c.course_id;

-- 2. Get course enrollment summary
SELECT 
    c.course_name,
    c.instructor,
    COUNT(ce.student_id) as enrolled_students
FROM courses c
LEFT JOIN course_enrollments ce ON c.course_id = ce.course_id
GROUP BY c.course_id;

-- 3. Get student's enrolled courses
SELECT 
    s.first_name,
    s.last_name,
    GROUP_CONCAT(c.course_name) as enrolled_courses
FROM students s
JOIN course_enrollments ce ON s.student_id = ce.student_id
JOIN courses c ON ce.course_id = c.course_id
GROUP BY s.student_id;

-- 4. Get attendance for a specific date range
SELECT 
    s.first_name,
    s.last_name,
    c.course_name,
    a.attendance_date,
    a.status,
    a.notes
FROM attendance a
JOIN students s ON a.student_id = s.student_id
JOIN courses c ON a.course_id = c.course_id
WHERE a.attendance_date BETWEEN '2024-01-15' AND '2024-01-17'
ORDER BY a.attendance_date;