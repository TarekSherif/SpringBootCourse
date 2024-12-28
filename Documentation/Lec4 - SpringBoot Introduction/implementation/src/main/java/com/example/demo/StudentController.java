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