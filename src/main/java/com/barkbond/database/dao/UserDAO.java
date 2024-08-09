package com.barkbond.database.dao;

import com.barkbond.database.entity.*;
import org.springframework.data.jpa.repository.*;


public interface UserDAO extends JpaRepository<User, Long> {

    User findByFirstName(String firstName);
    User findById(Integer id);

    // select * from employee where lower(email) = lower(:email)
    User findByEmailIgnoreCase(String email);


}
