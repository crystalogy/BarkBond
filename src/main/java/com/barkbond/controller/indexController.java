package com.barkbond.controller;

import com.barkbond.database.entity.Animal;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import com.barkbond.service.*;

import java.util.List;

@Slf4j
@Controller
public class indexController {

//    @Autowired
//    private ProductDAO productDAO;

    @Autowired
    private AnimalService animalService;



//    @GetMapping("/")
//    public ModelAndView index() {
//        // this function is for the home page of the website which is expressed as just a plain slash "/"
//        ModelAndView response = new ModelAndView("index");
//
////        response.addObject("message", "Hello World!");
//
//        return response;
//    }

    @GetMapping("/")
    public ModelAndView index() {
        // this function is for the home page of the website which is expressed as just a plain slash "/"
        ModelAndView response = new ModelAndView("index");

//        response.addObject("message", "Hello World!");

        return response;
    }


    @GetMapping("/about")
    public ModelAndView about() {
        ModelAndView response = new ModelAndView("about");
        return response;
    }

//    @GetMapping("/adopt")
//    public ModelAndView adopt() {
//        ModelAndView response = new ModelAndView("adopt");
//        return response;
//    }

    @GetMapping("/resources")
    public ModelAndView resources() {
        ModelAndView response = new ModelAndView("resources");

        return response;
    }

    @GetMapping("/blog")
    public ModelAndView blog() {
        ModelAndView response = new ModelAndView("blog");

        return response;
    }

    @GetMapping("/help")
    public ModelAndView help() {
        ModelAndView response = new ModelAndView("help");

        return response;
    }

//    @GetMapping("/dashboard")
//    public ModelAndView dashboard() {
//        // this page
//        ModelAndView response = new ModelAndView("dashboard");
//        List<Animals> animals = animalService.getAllAnimals();
//
//        response.addObject("animalList", animals);
//        return response;
//    }


//    List<Animal> forEach(animal)  -> {
//        log.debug("Animal: + animal.getAnimalName());");
//    }
}
