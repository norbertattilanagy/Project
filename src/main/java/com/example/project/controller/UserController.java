package com.example.project.controller;

import com.example.project.model.User;
import com.example.project.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String showSignIn() {
        return "Sign_in";
    }

    @PostMapping("/sign_in_submit")
    public String signInSubmit(User user) {
        System.out.println("ajunge sign in");
        List<User> allUser = userService.getAll();
        for (int i = 0; i < allUser.size(); i++) {
            if (allUser.get(i).getEmail().equals(user.getEmail()) && allUser.get(i).getPassword().equals(user.getPassword())) {
                System.out.println("\nDa");
                return "Home_page";
            }
        }
        System.out.println("\nNu");
        return "Sign_in";
    }

    @GetMapping("/create_account")
    public String showCreateAccount() {
        return "Create_account";
    }

    @PostMapping("/create_account_submit")
    public String createAccountSubmit(User user) {
        System.out.println("ajunge create account");
        userService.save(user);
        return "Sign_in";
    }

    @GetMapping("/home_page")
    public String showHomePage() {
        return "Home_page";
    }

}
