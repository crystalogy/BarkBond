package com.barkbond.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class indexController {

//    @Autowired
//    private ProductDAO productDAO;

    @GetMapping("/")
    public ModelAndView index() {
        // this function is for the home page of the website which is expressed as just a plain slash "/"
        ModelAndView response = new ModelAndView("index");

        response.addObject("message", "Hello World!");

        return response;
    }


    @GetMapping("/about")
    public ModelAndView about() {
        // this page
        ModelAndView response = new ModelAndView("about");

        return response;
    }

    @GetMapping("/adopt")
    public ModelAndView adopt() {
        // this page
        ModelAndView response = new ModelAndView("adopt");

        return response;
    }

    @GetMapping("/resources")
    public ModelAndView resources() {
        // this page
        ModelAndView response = new ModelAndView("resources");

        return response;
    }

    @GetMapping("/blog")
    public ModelAndView blog() {
        // this page
        ModelAndView response = new ModelAndView("blog");

        return response;
    }

    @GetMapping("/help")
    public ModelAndView help() {
        // this page
        ModelAndView response = new ModelAndView("help");

        return response;
    }
}
