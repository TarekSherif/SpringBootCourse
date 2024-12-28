
<a id="Table_Contents"></a>
 

# First Exam


## Table of Contents

1. [SQL Q&A](#SQL_Q&A)
2. [HTML Q&A](#HTML_Q&A)
3. [Spring Boot Q&A](#Spring_Boot_Q&A)
 

<a id="SQL_Q&A"></a>
---

<table>
    <thead>
        <tr>
            <th>Course ID</th>
            <th>Course Name</th>
            <th>Instructor Name</th>
            <th>Duration (hrs)</th>
            <th>Price</th>
            <th>Created At</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Python Programming</td>
            <td>Tarek Sherif</td>
            <td>30</td>
            <td>299.99</td>
            <td>2024-11-30 05:35:31</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Web Development</td>
            <td> 𝒀𝑶𝑼𝑺𝑺𝑬𝑭 𝑨𝑩𝑶𝑯𝑬𝑰𝑩𝑨</td>
            <td>40</td>
            <td>399.99</td>
            <td>2024-11-30 05:35:31</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Data Science</td>
            <td> The International</td>
            <td>45</td>
            <td>499.99</td>
            <td>2024-11-30 05:35:31</td>
        </tr>
    </tbody>
</table>

## [SQL Q&A ](#Table_Contents)

```
cid  name              type          notnull   pk
---  ------------      ------------  -------   --
0    course_id         INTEGER       0         1
1    course_name       TEXT          1         0
2    instructor        TEXT          1         0
3    duration          TEXT          1         0
3    price             DECIMAL       1         0
4    created_at        DATE          0         0
```

---

Q1- Write the DDL SQL statement to create this table ?

```sql
CREATE TABLE courses (
 course_id INTEGER PRIMARY KEY AUTOINCREMENT,
 course_name TEXT NOT NULL,
 instructor TEXT NOT NULL,
 duration_hours INTEGER NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 created_at DATETIME 
);
```
---

Q2-Write an SQL query to retrieve all data from the table?

```sql
SELECT * FROM courses ;
```
---

Q3- Write a DML SQL statement to remove any instructors named "The International Data" ?


```sql
DELETE FROM courses WHERE instructor='The International';

```

 
<a id="HTML_Q&A"></a>
---

## [HTML Q&A](#HTML_Q&A)
Q1- Write HTML code to display the table?
```HTML 
<table>
    <thead>
        <tr>
            <th>Course ID</th>
            <th>Course Name</th>
            <th>Instructor Name</th>
            <th>Duration (hrs)</th>
            <th>Price</th>
            <th>Created At</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Python Programming</td>
            <td>Tarek Sherif</td>
            <td>30</td>
            <td>299.99</td>
            <td>2024-11-30 05:35:31</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Web Development</td>
            <td> 𝒀𝑶𝑼𝑺𝑺𝑬𝑭 𝑨𝑩𝑶𝑯𝑬𝑰𝑩𝑨</td>
            <td>40</td>
            <td>399.99</td>
            <td>2024-11-30 05:35:31</td>
        </tr>
    </tbody>
</table>
```

---

Q2- Write HTML code for a form with input fields for each column in the table ?

```HTML

    <form>
        <label for="courseId">Course ID:</label>
        <input type="number" id="courseId" name="courseId" required><br><br>

        <label for="courseName">Course Name:</label>
        <input type="text" id="courseName" name="courseName" required><br><br>

        <label for="instructorName">Instructor Name:</label>
        <input type="text" id="instructorName" name="instructorName" required><br><br>

        <label for="duration">Duration (hrs):</label>
        <input type="number" id="duration" name="duration" required><br><br>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" step="0.01" required><br><br>

        <label for="createdAt">Created At:</label>
        <input type="datetime-local" id="createdAt" name="createdAt" required><br><br>

        <button type="submit">Add Course</button>
    </form>
```
 

<a id="Spring_Boot_Q&A"></a>
---

## [ Spring Boot Q&A :](#Spring_Boot_Q&A)
---

Q1- What tools are required to run a Spring Boot application on my PC ?

```
- JDK
- Maven
```

---

Q2- How can I build a Maven Spring Boot project and add dependencies ?

```bash
mvn clean install
```

---

Q3-How can I run a Maven Spring Boot project ?

```bash
mvn spring-boot:run
```
 
---
  

 