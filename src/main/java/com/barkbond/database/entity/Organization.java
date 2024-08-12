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
@Table(name = "organization")
public class Organization {

    @OneToMany(mappedBy = "organization",fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private List<Animal> animals;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "location")
    private String location;

    @Column(name = "admin_id")
    private Integer adminId;
}
