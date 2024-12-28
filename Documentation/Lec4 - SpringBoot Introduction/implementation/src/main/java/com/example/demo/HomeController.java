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