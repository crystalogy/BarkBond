package com.barkbond.database.dao;

import com.barkbond.database.entity.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface AnimalDAO extends JpaRepository<Animal, Long> {

    @Query("select a from Animal a where concat(a.animalType, '', a.id) like concat('%', :term, '%') ")
    List<Animal> findByCustomTerm(String term);

//    @Query("SELECT a FROM Animal a WHERE " +
//            "(:age IS NULL OR a.age = :age) AND " +
//            "(:size IS NULL OR a.size = :size) AND " +
//            "(:gender IS NULL OR a.gender = :gender) AND " +
//            "(:specialNeeds IS NULL OR a.specialNeeds = :specialNeeds)")
//    List<Animal> findByAgeAndSizeAndGenderAndSpecialNeeds(@Param("age") String age,
//                                                          @Param("size") String size,
//                                                          @Param("gender") String gender,
//                                                          @Param("specialNeeds") Boolean specialNeeds);

Animal findAnimalById (Integer id);


}