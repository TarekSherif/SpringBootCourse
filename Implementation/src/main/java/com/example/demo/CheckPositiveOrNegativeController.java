package com.example.demo;

 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CheckPositiveOrNegativeController {

    @GetMapping("/CheckPositiveOrNegative")
    public String showForm() {
        return "CheckPositiveOrNegative/index";
    }

    @PostMapping("/CheckPositiveOrNegative")
    public String CheckPositiveOrNegative(@RequestParam("number") int number, Model model) {
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
        return "CheckPositiveOrNegative/result";
    }
}