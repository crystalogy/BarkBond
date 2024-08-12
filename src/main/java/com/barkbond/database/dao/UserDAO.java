package com.barkbond.database.dao;

import com.barkbond.database.entity.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;


public interface UserDAO extends JpaRepository<User, Long> {

    User findByFirstName(String firstName);
    @Query(value = "select * from users u where u.id = :id", nativeQuery = true)
    User findUserById(Integer id);

    @Query("select u from User u where concat(u.email, '', u.id) like concat('%', :term, '%') ")
    List<User> findByCustomTerm(String term);

    // select * from employee where lower(email) = lower(:email)
    User findByEmailIgnoreCase(String email);


}
