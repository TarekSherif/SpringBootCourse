-- Create the database schema  

-- Courses table  
CREATE TABLE courses (  
    course_id INTEGER PRIMARY KEY,  
    course_name TEXT NOT NULL,  
    instructor TEXT NOT NULL,  
    duration_hours INTEGER NOT NULL,  
    price DECIMAL(10, 2) NOT NULL,  
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP  
);  

-- Students table  
CREATE TABLE students (  
    student_id INTEGER PRIMARY KEY,  
    first_name TEXT NOT NULL,  
    last_name TEXT NOT NULL,  
    email TEXT UNIQUE NOT NULL,  
    phone TEXT,  
    registration_date DATETIME DEFAULT CURRENT_TIMESTAMP  
);  

-- Course Enrollments table (many-to-many relationship between students and courses)  
CREATE TABLE course_enrollments (  
    enrollment_id INTEGER PRIMARY KEY,  
    student_id INTEGER NOT NULL,  
    course_id INTEGER NOT NULL,  
    enrollment_date DATETIME DEFAULT CURRENT_TIMESTAMP,  
    status TEXT DEFAULT 'active',  
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,  
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE  
);  

-- Attendance table  
CREATE TABLE attendance (  
    attendance_id INTEGER PRIMARY KEY,  
    student_id INTEGER NOT NULL,  
    course_id INTEGER NOT NULL,  
    attendance_date DATE NOT NULL,  
    status TEXT CHECK(status IN ('present', 'absent', 'late')) NOT NULL,  
    notes TEXT,  
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,  
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE  
);  