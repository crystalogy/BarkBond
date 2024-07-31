package com.barkbond.controller;

import com.barkbond.database.dao.*;
import com.barkbond.database.entity.*;
import com.barkbond.form.*;
import com.barkbond.security.AuthenticatedUserUtilities;
import com.barkbond.service.UserService;
import jakarta.validation.*;
import lombok.extern.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import jakarta.servlet.http.HttpSession;

import java.util.*;

@Slf4j
@Controller
@RequestMapping("/account")
public class LoginController {

    @Autowired
    private UserDAO userDao;

    @Autowired
    private UserService userService;

    @Autowired
    private AuthenticatedUserUtilities authenticatedUserUtilities;

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


}