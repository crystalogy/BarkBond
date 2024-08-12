package com.barkbond.form;

import jakarta.validation.constraints.NotEmpty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CreateAnimalFormBean {

    @NotEmpty
    private String animalID;

    @NotEmpty
    private String adoptionStatus;

    @NotEmpty(message = "Animal type is required")
    private String animalType;

    @NotEmpty(message = "Breed is required")
    private String breed;

    @NotEmpty(message = "Gender is required")
    private String gender;

    @NotEmpty(message = "Animal name is required")
    private String animalName;

    @NotEmpty(message = "Age is required")
    private String age;

    @NotEmpty(message = "Organization ID is required")
    private String organizationId;

    @NotEmpty(message = "Photo URL is required")
    private String photoUrl;


    private String createDate;
}
