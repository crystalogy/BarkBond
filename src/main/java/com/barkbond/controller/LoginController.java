package com.barkbond.controller;

import org.springframework.ui.Model;
import com.barkbond.database.dao.*;
import com.barkbond.database.entity.*;
import com.barkbond.form.*;
import com.barkbond.security.AuthenticatedUserUtilities;
import com.barkbond.service.*;
import jakarta.validation.*;
import lombok.extern.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import jakarta.servlet.http.HttpSession;
import org.springframework.security.core.Authentication;

import java.util.*;

@Slf4j
@Controller
@RequestMapping("/account")
public class LoginController {



    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private UserDetailsService userDetailsService;



    @Autowired
    private UserDAO userDao;

    @Autowired
    private UserService userService;

    @Autowired
    private AuthenticatedUserUtilities authenticatedUserUtilities;
    @Autowired
    private AnimalDAO animalDAO;

    @GetMapping("/create-account")
    public ModelAndView createAccount() {
        ModelAndView response = new ModelAndView("auth/create-account");

        return response;
    }

    @PostMapping("/create-account")
    public ModelAndView createAccountSubmit(@Valid CreateAccountFormBean form, BindingResult bindingResult, HttpSession session) {
        ModelAndView response = new ModelAndView();

        // homework if you want - check to make sure the email does not already exist
        // this is a great case the custom annotation that we made

        if (bindingResult.hasErrors()) {
            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug("Validation error : " + ((FieldError) error).getField() + " = " + error.getDefaultMessage());
            }

            response.addObject("bindingResult", bindingResult);
            response.addObject("form", form);
        } else {
            // there were no errors, so we can create the new user in the database
            userService.createUser(form);

//            userService.assignUserRole(form);
            authenticatedUserUtilities.manualAuthentication(session, form.getUsername(), form.getPassword());
        }
        response.setViewName("redirect:/");
        return response;
    }
    @PostMapping("/success")
    ModelAndView loginSuccess() {
        ModelAndView response = new ModelAndView();
        User user = authenticatedUserUtilities.getCurrentUserObject();
        log.debug("User: " + user);

        if(authenticatedUserUtilities.isUserInRole("ADMIN")){
            // where to send admin after login
            response = new ModelAndView("redirect:/");

        }
        if(!authenticatedUserUtilities.isUserInRole("ADMIN")){
            //where to send user (non-admin) after login
            response.setViewName("redirect:/");
        }
        response.addObject("user", user);
        return response;
    }


    @GetMapping("/login")
    public String showLoginPage(Model model) {
        return "login"; // Assuming you have a login view
    }


    @PostMapping("/login")
    public String handleLogin(@RequestParam String username, @RequestParam String password, Model model, HttpSession session) {
        try {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(username, password));
            SecurityContextHolder.getContext().setAuthentication(authentication);

            // Retrieve the user details
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            User user = (User) userDetails;

            // Set the user's first name in the model
            model.addAttribute("User", user);

            // Redirect to the home page or wherever you want to go after login
            return "redirect:/home";
        } catch (BadCredentialsException e) {
            model.addAttribute("error", "Invalid username or password.");
            return "login";
        }
    }


}

