package com.barkbond.service;

import com.barkbond.database.dao.*;
import com.barkbond.database.entity.*;
import com.barkbond.form.CreateAnimalFormBean;
import lombok.extern.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.*;

@Slf4j
@Component
@Service
public class AnimalService {
    @Autowired
    private AnimalDAO animalDao;

    public List<Animal> getAllAnimals() {
        return animalDao.findAll();
    }

    public Animal createAnimal(CreateAnimalFormBean form) {
        Animal animal = new Animal();
        animal.setName(form.getAnimalName());
        animal.setAnimalType(form.getAnimalType());
        animal.setAnimalType(form.getBreed());
        animal.setAge(form.getAge());
        animal.setGender(form.getGender());
        animal.setCreateDate(new Date());
        animalDao.save(animal);
        return animal;
    }
}