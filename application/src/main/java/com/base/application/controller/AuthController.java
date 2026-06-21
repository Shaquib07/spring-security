package com.base.application.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthController {

    // Redirect root to login
    @GetMapping("/")
    public String root() {
        System.out.println("into root..");
        return "redirect:/login";
    }

    // Show home.jsp (which contains the login form)
    @GetMapping("/login")
    public String login() {
        System.out.println("into login..");
        return "home";
    }

    // After login, redirect based on role
    @GetMapping("/dashboard")
    public String dashboard(Authentication authentication) {
        System.out.println("into dashboard..");
        String role = authentication.getAuthorities().stream()
                .findFirst()
                .map(GrantedAuthority::getAuthority)
                .orElse("");

        if (role.equals("ROLE_ADMIN")) {
            return "redirect:/admin";
        } else {
            return "redirect:/user";
        }
    }

    @GetMapping("/user")
    public String userPage(Authentication authentication, Model model) {
        System.out.println("into userPage..");
        model.addAttribute("username", authentication.getName());
        model.addAttribute("role", "USER");
        return "user";
    }

    @GetMapping("/admin")
    public String adminPage(Authentication authentication, Model model) {
        System.out.println("into adminPage..");
        model.addAttribute("username", authentication.getName());
        model.addAttribute("role", "ADMIN");
        return "admin";
    }
}