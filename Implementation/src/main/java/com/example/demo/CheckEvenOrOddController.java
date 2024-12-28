package com.example.demo;

 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CheckEvenOrOddController {

    @GetMapping("/CheckEvenOrOdd")
    public String showForm() {
        return "CheckEvenOrOdd/index";
    }

    @PostMapping("/CheckEvenOrOdd")
    public String CheckEvenOrOdd(@RequestParam("number") int number, Model model) {
        String result = (number % 2 == 0) ? "Even" : "Odd";
        model.addAttribute("number", number);
        model.addAttribute("result", result);
        return "CheckEvenOrOdd/result";
    }
}