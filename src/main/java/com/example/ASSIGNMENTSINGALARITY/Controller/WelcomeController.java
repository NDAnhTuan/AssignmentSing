package com.example.ASSIGNMENTSINGALARITY.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1")
public class WelcomeController {
    @GetMapping("/welcome")
    public String welcome() {
        return "hello world";
    }
}
