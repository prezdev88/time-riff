package com.example.time_riff_backend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("/test")
public class TestController {

    // curl http://localhost:8080/test
    @GetMapping
    public String sayHello() {
        return "hello";
    }
}
