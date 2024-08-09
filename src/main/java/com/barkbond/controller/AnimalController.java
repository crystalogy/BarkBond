package com.barkbond.controller;

import com.barkbond.database.dao.OrganizationDAO;
import com.barkbond.database.entity.Animal;
import com.barkbond.database.entity.Organization;
import com.barkbond.database.entity.User;
import com.barkbond.security.AuthenticatedUserUtilities;
import com.barkbond.service.AnimalService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/adopt")
public class AnimalController {

    @Autowired
    private AnimalService animalService;

    @Autowired
    private OrganizationDAO organizationDAO;

    @Autowired
    private AuthenticatedUserUtilities authenticatedUserUtilities;

    @GetMapping("/animals")
     ModelAndView adopt() {
        ModelAndView response = new ModelAndView();
        User user = null;
        if (authenticatedUserUtilities.isAuthenticated()) {
            user = authenticatedUserUtilities.getCurrentUserObject();
        Organization organization = organizationDAO.findOrganizationByAdminId(user.getId());
        response.addObject("organization", organization);
        }
        List<Animal> animals = animalService.getAllAnimals();
        log.debug("animals: {}", animals);
        response.addObject("animals", animals);
        response.setViewName("adopt");
        return response;
    }

}