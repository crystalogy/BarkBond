package com.barkbond.service;

import com.barkbond.database.dao.*;
import com.barkbond.database.entity.*;
import com.barkbond.form.*;
import lombok.extern.slf4j.*;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.*;

@Slf4j
@Service
public class UserService {

    @Autowired
    private UserDAO userDao;


    public User createUser(@NotNull CreateAccountFormBean form) {
        // there were no errors, so we can create the new user in the database
        User user = new User();

        user.setEmail(form.getEmail());

        // we are getting a plain text password because the user entered it into the form
        user.setPassword(form.getPassword());
        user.setPassword(form.getFullName());
        user.setCreateDate(new Date());

        // save the user to the database
        userDao.save(user);

        return user;
    }

}
