package com.example.auth_service.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
public class AuthController {

    @GetMapping("/public")
    public String publicEndpoint() {
        return "Auth service is Running and can be seen by public!";
    }

    @GetMapping("/private")
        return "Private end point of the Auth Service";
    }
}