package com.barkbond.controller;


import jakarta.servlet.http.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.resource.*;

import java.nio.file.AccessDeniedException;

@Slf4j
@Controller
//The @ControllerAdvice annotation is used to define a global exception handler for the application.
@ControllerAdvice
public class ErrorController {

// this is optional... this is a catch-all bucket for 404 errors

    @ExceptionHandler(NoResourceFoundException.class)
    @RequestMapping(value = {"/error/404", "/404"})
    public ModelAndView error404(HttpServletRequest request) {
        // This is used in the security config for 404 pages
        ModelAndView response = new ModelAndView("error/404");

        log.debug("!!!!!!!!!!!!!!!!!! IN ERROR CONTROLLER : 404 NOT FOUND : " + request.getMethod() + " " + request.getRequestURI());
//        log.debug("Error Found", e);

        // this line of code is specifically setting a 404 status code
        response.setStatus(HttpStatus.NOT_FOUND);

        return response;
    }

//    @ExceptionHandler(AccessDeniedException.class)
//    public ModelAndView accessDenied(HttpServletRequest request, Exception ex) {
//        // This is used in the security config for 404 pages
//        ModelAndView response = new ModelAndView("error/403");
//
//        log.debug("!!!!!!!!!!!!!!!!!! IN ERROR CONTROLLER : 403 FORBIDDEN : " + request.getMethod() + " " + request.getRequestURI());

}
