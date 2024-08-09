package com.barkbond.database.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.*;

@Setter
@Getter
@Entity
@ToString
//@NoArgsConstructor
//@AllArgsConstructor
@Table(name = "animals")
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer animalID;

    @Column(name = "adoption_status")
    private String status;

    @Column(name = "animal_type")
    private String animalType;

    @Column(name = "breed")
    private String breed;

    @Column(name = "animal_name")
    private String name;

    @Column(name = "gender")
    private String gender;

    @Column(name = "age")
    private String age;

    @Column(name = "organization_id")
    private Integer organizationId;

    @Column(name = "photo_url")
    private String photoUrl;

    @Column(name = "create_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createDate;
}
