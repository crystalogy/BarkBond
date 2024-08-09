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

    @NotEmpty
    private String animalType;

    @NotEmpty
    private String breed;

    @NotEmpty
    private String gender;

    @NotEmpty
    private String animalName;

    @NotEmpty
    private String age;

    @NotEmpty
    private String organizationId;

    @NotEmpty
    private String photoUrl;

    @NotEmpty
    private String createDate;
}
