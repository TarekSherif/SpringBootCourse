
<a id="Table_Contents"></a>
 

# Introduction to Spring Boot


## Table of Contents

1. [What is Spring Boot?](#what_is_spring_boot)
2. [Set_up_your_environment](#Set_up_your_environment)
3. [Spring_Initializr](#Spring_Initializr)
4. [Common_Dependencies](#Common_Dependencies)
5. [Project_Structure](#Project_Structure)
6. [Dependency Management with Maven](#What_is_Maven)
7. [Run_Project](#Run_Project)
8. [Sample Example ](#Sample_Example_Initializr)
    - [Sample Example Initializr](#Sample_Example_Initializr)
    - [Sample Example Controller](#Sample_Example_Controller)
    - [Sample Example View](#Sample_Example_View)
9. [Full Example ](#Full_Example_Initializr)
    - [Full Example Initializr](#Full_Example_Initializr)
    - [Full Example Model](#Full_Example_Model)
    - [Full Example Controller](#Full_Example_Controller)
    - [Full Example Views](#Full_Example_Views)

<a id="what_is_spring_boot"></a>
---

## [What is Spring Boot ? ](#Table_Contents)

- Spring Boot is an extension of the Spring framework.
- Simplifies the setup and development of Spring applications.
- Provides default configurations for rapid application development.

 
 
<a id="Set_up_your_environment"></a>
---

## [Set up your environment :](#Table_Contents)
   - **Java Development Kit (JDK)**: Required for running Java applications.
   - **Apache Maven**: A build automation tool for managing project dependencies and building your application.
   - **Integrated Development Environment (IDE)**: Use an IDE like IntelliJ IDEA or Eclipse for writing and managing your code.

<a id="Spring_Initializr"></a>
---

## [ Create a new Spring Boot project :](#Table_Contents)
   - Use [Spring Initializr](https://start.spring.io/).
   - Select dependencies like :
        - Web 
            - ID: spring-boot-starter-web
        - Developer Tools
            - ID: spring-boot-devtools
        - Thymeleaf Template Engines 
            - ID: spring-boot-starter-thymeleaf

<a id="Common_Dependencies"></a>
---

## [ Common Dependencies :](#Table_Contents)

1. Spring Boot Starter Web
    - Artifact ID: spring-boot-starter-web
    - Description: This starter is used for building web applications, including RESTful applications using Spring MVC. It includes dependencies for Spring MVC, Jackson (for JSON binding), and embedded Tomcat server.
    - Key Components:
Spring MVC: Provides the framework for building web applications.
Jackson: A library for converting Java objects to JSON and vice versa.
Embedded Tomcat: Allows you to run your application as a standalone Java application without needing an external server.
2. Spring Boot Starter Data JPA
    - Artifact ID: spring-boot-starter-data-jpa
    - Description: This starter is used for integrating Spring Data JPA, which simplifies database access and manipulation using JPA (Java Persistence API). It provides a powerful repository abstraction.
    - Key Components:
    Spring Data JPA: Simplifies data access and provides a repository pattern.
    Hibernate: The default JPA implementation used for ORM (Object-Relational Mapping).
    Spring Transaction Management: Manages transactions for database operations.
3. Spring Boot Starter Security
    - Artifact ID: spring-boot-starter-security
    - Description: This starter provides security features for your application, including authentication and authorization. It integrates Spring Security, which is a powerful and customizable authentication and access-control framework.
    - Key Components:
    Authentication: Supports various authentication mechanisms (e.g., form-based, basic, OAuth).
    Authorization: Controls access to resources based on user roles and permissions.
    CSRF Protection: Provides protection against Cross-Site Request Forgery attacks.
4. Spring Boot Starter Thymeleaf
   -  Artifact ID: spring-boot-starter-thymeleaf
   -  Description: This starter is used for server-side rendering of web pages using Thymeleaf, a modern server-side Java template engine for web and standalone environments.
    - Key Components:
    Thymeleaf: Allows you to create dynamic web pages with HTML templates.
    Spring MVC Integration: Seamlessly integrates with Spring MVC for rendering views.
5. Spring Boot Starter Test
   - Artifact ID: spring-boot-starter-test
   -  Description: This starter is used for testing Spring Boot applications. It includes various testing libraries and tools to facilitate unit and integration testing.
   -  Key Components:
    JUnit: The default testing framework for writing unit tests.
    Mockito: A mocking framework for creating mock objects in tests.
    Spring Test: Provides support for loading Spring ApplicationContexts and testing Spring components.
6. Spring Boot Starter Actuator
   -  Artifact ID: spring-boot-starter-actuator
   -  Description: This starter provides production-ready features to help you monitor and manage your application. It exposes various endpoints to gather metrics, health checks, and application information.
   -  Key Components:
    Health Checks: Provides endpoints to check the health of the application.
    Metrics: Exposes metrics about the application’s performance and usage.
    Environment Info: Provides information about the application’s environment and configuration.
7. Spring Boot Starter Validation
   -  Artifact ID: spring-boot-starter-validation
   -  Description: This starter is used for validating Java beans using the Java Bean Validation API (JSR 380). It integrates Hibernate Validator, the reference implementation of the validation API.
   -  Key Components:
    Annotations: Provides various annotations (e.g., @NotNull, @Size, @Email) for validating fields in Java classes.
    Validation Groups: Supports grouping of validation constraints for different scenarios.
8. Spring Boot Starter Mail
   -  Artifact ID: spring-boot-starter-mail
   -  Description: This starter is used for sending emails from your Spring Boot application. It integrates JavaMailSender for email operations.
   -  Key Components:
    JavaMailSender: A Spring abstraction for sending emails.
    SMTP Configuration: Allows configuration of SMTP server settings for sending emails.
9. Spring Boot Starter Redis
   -  Artifact ID: spring-boot-starter-data-redis
   -  Description: This starter is used for integrating Redis, an in-memory data structure store, with Spring Boot. It provides support for caching and data storage.
   -  Key Components:
    Spring Data Redis: Provides a high-level abstraction for interacting with Redis.
    RedisTemplate: A template class for performing Redis operations.
10. Spring Boot Starter AOP
   -  Artifact ID: spring-boot-starter-aop
   -  Description: This starter is used for Aspect-Oriented Programming (AOP) in Spring applications. It allows you to define cross-cutting concerns (like logging, security, etc.) in a modular way.
   -  Key Components:
    AspectJ: A powerful AOP framework that integrates with Spring.
    @Aspect Annotation: Used to define aspects in your application.
 
<a id="Project_Structure"></a>
---

## [Spring Boot Maven Project Structure](#Table_Contents)
```bash
my-spring-boot-app/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── example/
│   │   │           └── demo/
│   │   │               ├── DemoApplication.java
│   │   │               └── controller/
│   │   │                   └── HelloController.java
│   │   ├── resources/
│   │   │   ├── application.properties
│   │   │   └── static/
│   │   │       └── index.html
│   │   └── webapp/
│   │       └── WEB-INF/
│   │           └── views/
│   │               └── view.html
│   └── test/
│       └── java/
│           └── com/
│               └── example/
│                   └── demo/
│                       └── DemoApplicationTests.java
└── pom.xml
```
<a id="What_is_Maven"></a>
---



## [Dependency Management with Maven](#Table_Contents)

### What is Maven?

- Maven is a build automation tool used primarily for Java projects.
- It manages project dependencies, builds, and documentation.

### Adding Dependencies

- **Maven**: Add dependencies in the `pom.xml` file.
- Example of adding Spring Web:

    
    ```xml
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
    ```



### Building the Project

- Use Maven commands to build and run your application.
- Example command to build the project:

    
`mvn clean install`

<a id="Run_Project"></a>
 

---

## [Open Project ](#Table_Contents)

- ### Run the application using `mvn spring-boot:run` or from the IDE.
- ### Verify by visiting `http://localhost:8080`.

<a id="Sample_Example_Initializr"></a>

---
## [Sample Example ](#Table_Contents)

## [Step 1: Create a Spring Boot Project ](#Table_Contents)

1. **Using Spring Initializr**:
   - Go to [Spring Initializr](https://start.spring.io/).
   - Select:
     - **Project**: Maven
     - **Language**: Java
     - **Spring Boot Version**: Latest stable version
     - **Dependencies**: Spring Web, Thymeleaf
   
<a id="Sample_Example_Controller"></a>
---

## [Step 2: Create a Controller to Pass Data to the View](#Table_Contents)

1. **Create a Controller Class**:
   - In the `src/main/java/com/example/demo` directory, create a new class named `HomeController`.

   ```java
   package com.example.demo;

   import org.springframework.stereotype.Controller;
   import org.springframework.ui.Model;
   import org.springframework.web.bind.annotation.GetMapping;
   import org.springframework.web.bind.annotation.PostMapping;
   import org.springframework.web.bind.annotation.RequestParam;

   @Controller
   public class HomeController {

       // Action to display the form
       @GetMapping("/")
       public String showForm(Model model) {
           model.addAttribute("message", "Welcome to Spring Boot!");
           return "index"; // This maps to index.html in the templates folder
       }

       // Action to handle form submission
       @PostMapping("/submit")
       public String handleFormSubmission(@RequestParam("name") String name, Model model) {
           model.addAttribute("message", "Hello, " + name + "!");
           return "index"; // Return the same view with updated data
       }
   }
   ```
<a id="Sample_Example_View"></a>
---

## [Step 3: Create the `index.html` View](#Table_Contents)

1. **Add Thymeleaf Template**:
   - Create a folder named `templates` under `src/main/resources`.
   - Inside the `templates` folder, create a file named `index.html`.

2. **Add HTML Content**:

   ```html
   <!DOCTYPE html>
   <html xmlns:th="http://www.thymeleaf.org">
   <head>
       <title>Spring Boot Example</title>
   </head>
   <body>
       <h1 th:text="${message}">Default Message</h1>
       <form action="/submit" method="post">
           <label for="name">Enter your name:</label>
           <input type="text" id="name" name="name" required>
           <button type="submit">Submit</button>
       </form>
   </body>
   </html>
   ```
<a id="Full_Example_Initializr"></a>
---


## [ Full Example Step 1: Create a Spring Boot Project](#Table_Contents)

1. **Using Spring Initializr**:
   - Go to [Spring Initializr](https://start.spring.io/).
   - Select:
     - **Project**: Maven
     - **Language**: Java
     - **Spring Boot Version**: Latest stable version
     - **Dependencies**: Spring Web, Thymeleaf
 
<a id="Full_Example_Model"></a>

---

## [ Step 2: Create the `Student` Model](#Table_Contents)

1. **Create a Model Class**:
   - In the `src/main/java/com/example/demo` directory, create a new package named `model`.
   - Inside the `model` package, create a class named `Student`.

   ```java
   package com.example.demo.model;

   public class Student {
       private String name;
       private int age;
       private String email;

       // Getters and Setters
       public String getName() {
           return name;
       }

       public void setName(String name) {
           this.name = name;
       }

       public int getAge() {
           return age;
       }

       public void setAge(int age) {
           this.age = age;
       }

       public String getEmail() {
           return email;
       }

       public void setEmail(String email) {
           this.email = email;
       }
   }
   ```
<a id="Full_Example_Controller"></a>
---

## [ Step 3: Create a Controller to Handle the Model](#Table_Contents)

1. **Create a Controller Class**:
   - In the `src/main/java/com/example/demo` directory, create a new class named `StudentController`.

   ```java
   package com.example.demo;

   import com.example.demo.model.Student;
   import org.springframework.stereotype.Controller;
   import org.springframework.ui.Model;
   import org.springframework.web.bind.annotation.GetMapping;
   import org.springframework.web.bind.annotation.ModelAttribute;
   import org.springframework.web.bind.annotation.PostMapping;

   @Controller
   public class StudentController {

       // Display the form with an empty Student object
       @GetMapping("/student")
       public String showStudentForm(Model model) {
           Student student = new Student(); // Create an empty Student object
           model.addAttribute("student", student); // Add it to the model
           return "student-form"; // Return the view name
       }

       // Handle form submission and display the submitted data
       @PostMapping("/student")
       public String submitStudentForm(@ModelAttribute("student") Student student, Model model) {
           // Add the submitted student object to the model
           model.addAttribute("submittedStudent", student);
           return "student-result"; // Return the view name
       }
   }
   ```
<a id="Full_Example_Views"></a>
---

## [Step 4: Create the Views](#Table_Contents)

1. **Create the `student-form.html` View**:
   - Create a folder named `templates` under `src/main/resources`.
   - Inside the `templates` folder, create a file named `student-form.html`.

   ```html
   <!DOCTYPE html>
   <html xmlns:th="http://www.thymeleaf.org">
   <head>
       <title>Student Form</title>
   </head>
   <body>
       <h1>Student Form</h1>
       <form action="/student" method="post" th:object="${student}">
           <label for="name">Name:</label>
           <input type="text" id="name" name="name" th:field="*{name}" required><br><br>

           <label for="age">Age:</label>
           <input type="number" id="age" name="age" th:field="*{age}" required><br><br>

           <label for="email">Email:</label>
           <input type="email" id="email" name="email" th:field="*{email}" required><br><br>

           <button type="submit">Submit</button>
       </form>
   </body>
   </html>
   ```

2. **Create the `student-result.html` View**:
   - Inside the `templates` folder, create a file named `student-result.html`.

   ```html
   <!DOCTYPE html>
   <html xmlns:th="http://www.thymeleaf.org">
   <head>
       <title>Student Result</title>
   </head>
   <body>
       <h1>Student Details</h1>
       <p><strong>Name:</strong> <span th:text="${submittedStudent.name}"></span></p>
       <p><strong>Age:</strong> <span th:text="${submittedStudent.age}"></span></p>
       <p><strong>Email:</strong> <span th:text="${submittedStudent.email}"></span></p>
       <a href="/student">Go Back</a>
   </body>
   </html>
   ```


---


<a id="References"></a>
---

## [References](#Table_Contents)

 
- [Spring.io](https://docs.spring.io/spring-boot/index.html)
- [baeldung](https://www.baeldung.com/spring-boot)


---

 