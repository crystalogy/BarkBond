package com.barkbond.service;

import com.barkbond.database.dao.*;
import com.barkbond.database.entity.*;
import com.barkbond.form.*;
import lombok.extern.slf4j.*;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.*;
import org.springframework.security.crypto.password.*;
import org.springframework.stereotype.*;

import java.util.*;

@Slf4j
@Component
public class UserService {

    @Autowired
    private UserDAO userDao;

    @Autowired
    private UserRoleDAO userRoleDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public User createUser( CreateAccountFormBean form) {
        // there were no errors, so we can create the new user in the database
        User user = new User();

        user.setEmail(form.getUsername());

        // we are getting a plain text password because the user entered it into the form
//        user.setPassword(form.getPassword());
        String encryptedPassword = passwordEncoder.encode(form.getPassword());
        user.setPassword(encryptedPassword);
        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setCreateDate(new Date());

        // save the user to the database
        userDao.save(user);

        return user;
    }

    public List<User> getAllUsers() {
        return userDao.findAll();
    }

    public User findByFirstName(String firstName) {
        return userDao.findByFirstName(firstName);
    }


    public UserRole assignUserRole(CreateAccountFormBean form) {
        User user = userDao.findByEmailIgnoreCase(form.getUsername());
        String role = form.getRole();
        if(role == null) {
            role = "USER";
        }
        List<UserRole> usersRole = userRoleDao.findByUserId(user.getId());
        UserRole assignedUserRole = new UserRole();
        if(usersRole.isEmpty()) {
            assignedUserRole.setUserId(user.getId());
            assignedUserRole.setRoleName(role);
            assignedUserRole.setCreateDate(new Date());
            userRoleDao.save(assignedUserRole);
        }
        for(UserRole userRole : usersRole) {
            if(userRole.getRoleName().equals(role)) {
                break;
            }
            userRole.setRoleName(role);
        }
        return assignedUserRole;
    }

}
