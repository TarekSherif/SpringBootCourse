
<a id="Table_Contents"></a>
 

# Lec6 Focused on If Statements in Java


## Table of Contents

1. [Problem Definition](#Problem_Definition)
2. [Spring Initializr](#Spring_Initializr)
    - Language              : Java
    - Project Management    : Maven
    - Dependencies :
        - Spring Web
        - Thymeleaf (for HTML rendering)
3. [Problem Solve](#Problem_Solve)
    - Step 0: Create the Flow Chart Diagram
    - Step 1: Create BackEnd
    - Step 2: Create FrontEnd
 

<a id="Problem_Definition"></a>
---

## [Problem Definition](#Table_Contents)
```
Write a Spring Boot application that takes a  number as input and determines whether it is   positive, negative, or zero.

```
 
 
<a id="Spring_Initializr"></a>
---
# Project Initializr
- Language              : Java
- Project Management    : Maven
- Dependencies :
    - Spring Web
    - Thymeleaf (for HTML rendering)

<a id="Problem_Solve"></a>
---

## [Problem Solve](#Table_Contents)
### Step 0: Create the Flow Chart Diagram
```mermaid
graph TD
    A[Start] --> B[Input a number]
    B --> C{Is the number > 0?}
    C -->|Yes| D[Positive]
    C -->|No| E{Is the number < 0?}
    E -->|Yes| F[Negative]
    E -->|No| G[Zero]
    D --> H[End]
    F --> H
    G --> H
 ```

### Step 1: Create the Controller
```java
package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CheckPositiveNumberController {

    @GetMapping("/")
    public String showForm() {
        return "checkNumber/index";
    }

    @PostMapping("/check")
    public String checkNumber(@RequestParam("number") int number, Model model) {
        String result;
        if (number > 0) {
            result = "Positive";
        } else if (number < 0) {
            result = "Negative";
        } else {
            result = "Zero";
        }
        model.addAttribute("number", number);
        model.addAttribute("result", result);
        return "checkNumber/result";
    }
}
```
---
### Step 2: Create HTML Templates


```html
<!-- 
 src/main/resources/templates/checkNumber/index.html
 -->
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Number Checker</title>
</head>
<body>
    <h1>Check If a Number is Positive, Negative, or Zero</h1>
    <form action="/check" method="post">
        <label for="number">Enter a number:</label>
        <input type="number" id="number" name="number" required>
        <button type="submit">Check</button>
    </form>
</body>
</html>
```

```html
<!-- 
 src/main/resources/templates/checkNumber/result.html
 -->
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Result</title>
</head>
<body>
    <h1>Result</h1>
    <p>The number <strong th:text="${number}">0</strong> is <strong th:text="${result}">Zero</strong>.</p>
    <a href="/">Check another number</a>
</body>
</html>
```
---
### Step 3: Run Project
```bash
mvn spring-boot:run
```

### Step 4: Access the Application
Visit 
http://localhost:8080
 


---