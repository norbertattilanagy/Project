package com.example.project.controller;

import com.example.project.model.User;
import com.example.project.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String showSignIn(){ return "Sign_in"; }

    @GetMapping("/create_account")
    public String showCreateAccount(){ return "Create_account"; }

    @PostMapping("create_account_submit")
    public String createAccountSubmit(User user){
        System.out.println("ajunge aici");
        userService.save(user);
        return "Sign_in";
    }

    @GetMapping("/home_page")
    public String showHomePage(){ return "Home_page"; }

}
