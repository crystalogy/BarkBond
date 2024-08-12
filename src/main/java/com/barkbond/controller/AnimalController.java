package com.barkbond.controller;

import com.barkbond.database.dao.OrganizationDAO;
import com.barkbond.database.entity.Animal;
import com.barkbond.database.entity.Organization;
import com.barkbond.database.entity.User;
import com.barkbond.dto.AnimalFilterCriteria;
import com.barkbond.security.AuthenticatedUserUtilities;
import com.barkbond.service.AnimalService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

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

    @PostMapping("/animals")
    public ResponseEntity<List<Animal>> filterAnimals(@RequestBody AnimalFilterCriteria criteria) {
        List<Animal> animals = animalService.getAllAnimals();

        // Stream to filter animals based on criteria
        Stream<Animal> filteredStream = animals.stream();

        if (!"all".equalsIgnoreCase(criteria.getAge())) {
            filteredStream = filteredStream.filter(animal -> criteria.getAge().equalsIgnoreCase(animal.getAge()));
        }

//        if (!"all".equalsIgnoreCase(criteria.getSize())) {
//            filteredStream = filteredStream.filter(animal -> criteria.getSize().equalsIgnoreCase(animal.getSize()));
//        }

        if (!"all".equalsIgnoreCase(criteria.getGender())) {
            filteredStream = filteredStream.filter(animal -> criteria.getGender().equalsIgnoreCase(animal.getGender()));
        }

//        if (criteria.isSpecialNeeds()) {
//            filteredStream = filteredStream.filter(Animal::isSpecialNeeds);
//        }

        List<Animal> filteredAnimals = filteredStream.collect(Collectors.toList());

        return ResponseEntity.ok(filteredAnimals);
    }


}