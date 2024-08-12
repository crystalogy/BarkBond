package com.barkbond.controller;

import com.barkbond.database.entity.*;
import com.barkbond.form.CreateAnimalFormBean;
import com.barkbond.service.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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

    @PreAuthorize("hasAnyAuthority('ADMIN','OrgAdmin')")
    @GetMapping("/dashboard")
    public ModelAndView dashboard() {
        ModelAndView response = new ModelAndView("dashboard");
        List<Animal> animals = animalService.getAllAnimals();
        List<User> users = userService.getAllUsers();
        List<Organization> organizations = organizationService.getAllOrganizations();
        response.addObject("animalList", animals);
        response.addObject("userList", users);
        response.addObject("organizationList", organizations);
        response.addObject("animalForm", new CreateAnimalFormBean());
        return response;
    }

//    @PreAuthorize("hasAnyAuthority('ADMIN','OrgAdmin')")
//    @PostMapping("/dashboard")
//    public String saveAnimalData(HttpServletRequest request) {
//        String[] newStatus = request.getParameterValues("newStatus");
//        String[] newAnimalType = request.getParameterValues("newAnimalType");
//        String[] newBreed = request.getParameterValues("newBreed");
//        String[] newName = request.getParameterValues("newName");
//        String[] newGender = request.getParameterValues("newGender");
//        String[] newAge = request.getParameterValues("newAge");
//        String[] newPhotoUrl = request.getParameterValues("newPhotoUrl");
//        String[] newOrganizationID = request.getParameterValues("newOrganizationID");
//
//        // Loop through the parameters and save each new animal
//        if (newStatus != null) {
//            for (int i = 0; i < newStatus.length; i++) {
//                Animal animal = new Animal();
//                animal.setStatus(newStatus[i]);
//                animal.setAnimalType(newAnimalType[i]);
//                animal.setBreed(newBreed[i]);
//                animal.setName(newName[i]);
//                animal.setGender(newGender[i]);
//                animal.setAge(newAge[i]);
//                animal.setPhotoUrl(newPhotoUrl[i]);
//                animal.setOrganizationId(Integer.parseInt(newOrganizationID[i]));
//
//                animalService.saveAnimal(animal);
//            }
//        }
//
//        return "redirect:/dashboard";
//    }
//
//}





//    ------------------------------ Second Version ------------------------------
//    @PreAuthorize("hasAnyAuthority('ADMIN','OrgAdmin')")
//    @PostMapping("/dashboard/save")
//    public ResponseEntity<String> saveEditedAnimals(@RequestBody List<CreateAnimalFormBean> animals) {
//        try {
//            for (CreateAnimalFormBean animalForm : animals) {
//                Animal animal = animalService.getAnimalById(Long.parseLong(animalForm.getAnimalID()));
//                if (animal != null) {
//                    animal.setStatus(animalForm.getAdoptionStatus());
//                    animal.setAnimalType(animalForm.getAnimalType());
//                    animal.setBreed(animalForm.getBreed());
//                    animal.setName(animalForm.getAnimalName());
//                    animal.setGender(animalForm.getGender());
//                    animal.setAge(animalForm.getAge());
//                    animal.setPhotoUrl(animalForm.getPhotoUrl());
//                    animal.setOrganizationId(Integer.parseInt(animalForm.getOrganizationId()));
//                    animalService.saveAnimal(animal);
//                }
//            }
//            return ResponseEntity.ok("Changes saved successfully!");
//        } catch (NumberFormatException e) {
//            log.error("Error parsing ID values: ", e);
//            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid ID format.");
//        } catch (Exception e) {
//            log.error("Error saving changes: ", e);
//            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error saving changes.");
//        }
//    }
//}


    @PreAuthorize("hasAnyAuthority('ADMIN','OrgAdmin')")
    @PostMapping("/dashboard")
    public ResponseEntity<String> saveEditedAnimals(@RequestBody List<CreateAnimalFormBean> animals) {
        try {
            for (CreateAnimalFormBean animalForm : animals) {
                Animal animal = animalService.getAnimalById(Long.parseLong(animalForm.getAnimalID()));
                if (animal != null) {
                    // Update animal object with new values
                    animal.setStatus(animalForm.getAdoptionStatus());
                    animal.setAnimalType(animalForm.getAnimalType());
                    animal.setBreed(animalForm.getBreed());
                    animal.setName(animalForm.getAnimalName());
                    animal.setGender(animalForm.getGender());
                    animal.setAge(animalForm.getAge());
                    animal.setPhotoUrl(animalForm.getPhotoUrl());
                    animal.setOrganizationId(Integer.parseInt(animalForm.getOrganizationId()));

                    animalService.saveAnimal(animal);
                }
            }
            return ResponseEntity.ok("Changes saved successfully!");
        } catch (Exception e) {
            log.error("Error saving changes: ", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error saving changes.");
        }
    }
}

