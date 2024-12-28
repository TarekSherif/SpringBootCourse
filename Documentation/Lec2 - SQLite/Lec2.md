 


# SQLite Script Tutorial

<a id="Table_Contents"></a>

##  Table of Contents


- [Introduction to SQLite](#SQLite_Introduction)
- [Installation](#SQLite_Installation)

- [SQLite Commands](#SQLite_Commands)
  - [Connecting to a Database](#SQLite_Commands_DBConnecting)
  - [Meta Data](#SQLite_Commands_MetaData)

- [SQL Categories](#SQL_Categories)
    - [DDL Operations](#SQL_DDL)
        - [Creating Table](#SQL_DDL_Creating)
        - [Dropping Tables](#SQL_DDL_Dropping)
    - [DML Operations](#SQL_DML)
        - [Inserting Data](#SQL_DML_Insert)
        - [Inserting Multiple Rows](#SQL_DML_M_Insert)
        - [Updating Data](#SQL_DML_Update)
        - [Deleting Data](#SQL_DML_Delete)

    - [Querying Data](#SQL_Querying)  
        - [Selecting All Data](#SQL_Selecting)
        - [Grouping Data](#SQL_Selecting_Grouping)
        - [Ordering Results](#SQL_Selecting_Ordering)

 
- [Importing & Exporting Data](#Importing_Exporting)
 
- [Questions and Answers](#test)
- [References](#references)

<a id="SQLite_Introduction"></a>
 ---

##  [Introduction to SQLite](#Table_Contents)

- Overview of SQLite
- Why use SQLite?
- Features of SQLite

<a id="SQLite_Installation"></a>
---

##  [SQLite Installation](#Table_Contents)

- Download SQLite from [SQLite Download Page](https://www.sqlite.org/download.html)
- Install SQLite on your system
1. Right-click on My Computer
2. Click on Advanced system settings
3. Edit the Path Variable
4. Add C:\sqlite
 

<a id="SQLite_Commands"></a>
 ---

##  [SQLite Commands](#Table_Contents)
- [Connecting to a Database](#test)
- [Meta Data](#test)
 
<a id="SQLite_Commands_DBConnecting"></a>
---

##  [Connecting to a Database](#Table_Contents)

```sql
sqlite3 courses.db
```

<a id="SQLite_Commands_MetaData"></a>
---

##  [Meta Data](#Table_Contents)

- ### To show all tables in a SQLite3 database :

```sql
.tables
```

- ### To get table Script  :

```sql
.schema [courses]
```
- ### To get information about table :

```sql
PRAGMA table_info(courses);
```
```
cid  name          type          notnull  dflt_value  pk
---  ------------  ------------  -------  ----------  --
0    student_id    INTEGER       0        NULL        1
1    first_name    TEXT          1        NULL        0
2    last_name     TEXT          1        NULL        0
3    email         TEXT          0        NULL        0
4    date_of_birth DATE          0        NULL        0
```
- ### To get Meta Data Help SQLite3 :
```sql
.help
```
- ### To Exit  SQLite3 :
```sql
.quit ;
```
<a id="SQL_Categories"></a>
---

##  [SQL Categories](#Table_Contents)

- [DDL (Data Definition Language)](#SQL_DDL)
  - [Creating Table](#SQL_DDL_Creating)
  - [Dropping Tables](#SQL_DDL_Dropping)
- [DML (Data Manipulation Language)](#SQL_DML)
    - [Inserting Data](#SQL_DML_Insert)
    - [Inserting Multiple Rows](#SQL_DML_M_Insert)
    - [Updating Data](#SQL_DML_Update)
    - [Deleting Data](#SQL_DML_Delete)
- [Querying Data](#SQL_Querying)  
    - [Selecting All Data](#SQL_Selecting)
    - [Grouping Data](#SQL_Selecting_Grouping)
    - [Ordering Results](#SQL_Selecting_Ordering)

 
<a id="SQL_DDL"></a>
---

###  [DDL (Data Definition Language)](#Table_Contents)
- [Creating Table](#SQL_DDL_Creating)
- [Dropping Tables](#SQL_DDL_Dropping)
- ALTER: Modify structure
- TRUNCATE: Remove all records

<a id="SQL_DML"></a>
---

###  [DML (Data Manipulation Language)](#Table_Contents)
- [Inserting Data](#SQL_DML_Insert)
- [Inserting Multiple Rows](#SQL_DML_M_Insert)
- [Updating Data](#SQL_DML_Update)
- [Deleting Data](#SQL_DML_Delete)

 <a id="SQL_Querying"></a>
---


###  [Querying Data](#Table_Contents)
- [Selecting All Data](#SQL_Selecting)
- [Grouping Data](#SQL_Selecting_Grouping)
- [Ordering Results](#SQL_Selecting_Ordering)
 <a id="SQL_DDL_Creating"></a>
---


##  [Creating Table](#SQL_DDL)

```sql
CREATE TABLE courses (
 course_id INTEGER PRIMARY KEY AUTOINCREMENT,
 course_name TEXT NOT NULL,
 instructor TEXT NOT NULL,
 duration_hours INTEGER NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

<a id="SQL_DDL_Dropping"></a>
---

##  [Dropping Tables](#SQL_DDL)

```sql
DROP TABLE courses;
```


<a id="SQL_DML_Insert"></a>
---


##   [Inserting Data](#SQL_DML)


```sql
INSERT INTO courses VALUES(1,'Python Programming','John Smith',30,299.990000000000009,'2024-11-30 05:35:31');
INSERT INTO courses VALUES(2,'Web Development','Sarah Johnson',40,399.990000000000009,'2024-11-30 05:35:31');
INSERT INTO courses VALUES(3,'Data Science','Michael Brown',45,499.990000000000009,'2024-11-30 05:35:31');

```

<a id="SQL_DML_M_Insert"></a>
---

##   [Inserting Multiple Rows](#SQL_DML)

```sql
INSERT INTO courses (course_name, instructor, duration_hours, price) VALUES
('Python Programming', 'John Smith', 30, 299.99),
('Web Development', 'Sarah Johnson', 40, 399.99),
('Data Science', 'Michael Brown', 45, 499.99);
```

<a id="SQL_DML_Update"></a>
---

##   [Updating Data](#SQL_DDL)

```sql
UPDATE users SET email = 'alice_new@example.com' WHERE id = 1;
```

<a id="SQL_DML_Delete"></a>
---

##   [Deleting Data](#SQL_DDL)

```sql
DELETE FROM courses WHERE id = 2;
```

<a id="SQL_Selecting"></a>
---

 

##   [Selecting Data](#SQL_Querying)

```sql
SELECT * FROM courses;
```

```sql
SELECT * FROM courses WHERE id = 1;
```

<a id="SQL_Selecting_Grouping"></a>
---
 

##   [Grouping Data](#SQL_Querying)

```sql
SELECT user_id, COUNT(*) AS order_count 
FROM courses 
GROUP BY user_id;
```

```sql
SELECT AVG(total) AS average_order_value FROM courses;
```
 

<a id="SQL_Selecting_Ordering"></a>
---

##   [Ordering Results](#SQL_Querying)

```sql
SELECT * FROM users ORDER BY name ASC;
```

<a id="SQL_Selecting_Grouping_Functions"></a>
---
 

##   [Adding Constraints](#Table_Contents) 

```sql
CREATE TABLE products (
 id INTEGER PRIMARY KEY,
 name TEXT NOT NULL,
 price REAL CHECK(price > 0)
);
```

<a id="SQL_DDL"></a>
---

##   [Updating Constraints](#Table_Contents)

```sql
ALTER TABLE products ADD COLUMN stock INTEGER DEFAULT 0;
```

<a id="Importing_Exporting"></a>
---


##  [Importing & Exporting Data](#Table_Contents)

### Importing Data
```bash
sqlite3 courses.db < courses.sql
```

### Exporting Data

```bash
sqlite3 courses.db .dump > courses_dump.sql
```
 
 
 
<a id="References"></a>
---
 
##   [References](#Table_Contents)

- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [SQLite Tutorial](https://www.sqlitetutorial.net)
