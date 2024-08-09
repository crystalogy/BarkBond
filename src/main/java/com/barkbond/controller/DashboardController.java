package com.barkbond.controller;

import com.barkbond.database.entity.*;
import com.barkbond.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@Controller
public class DashboardController {
    @Autowired
    private AnimalService animalService;
    @Autowired
    private UserService userService;
    @Autowired
    private OrganizationService organizationService;

//    @GetMapping("/dashboard/animals")
//    public ModelAndView animals() {
//        ModelAndView response = new ModelAndView("dashboard");
//        List<Animal> animals = animalService.getAllAnimals();
//        response.addObject("animalList", animals);
//        return response;
//    }
//
//    @GetMapping("/dashboard/users")
//    public ModelAndView users() {
//        ModelAndView response = new ModelAndView("dashboard");
//        List<User> users = userService.getAllUsers();
//        response.addObject("UserList", users);
//        return response;
//    }

    @GetMapping("/dashboard")
    public ModelAndView dashboard() {
        ModelAndView response = new ModelAndView("dashboard");
        List<Animal> animals = animalService.getAllAnimals();
        List<User> users = userService.getAllUsers();
        List<Organization> organizations = organizationService.getAllOrganizations();
        response.addObject("animalList", animals);
        response.addObject("userList", users);
        response.addObject("organizationList", organizations);
        return response;
    }

}
