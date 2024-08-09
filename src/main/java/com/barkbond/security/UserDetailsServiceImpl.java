package com.barkbond.security;

import com.barkbond.database.dao.*;
import com.barkbond.database.entity.User;
import com.barkbond.database.entity.*;
import lombok.extern.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.security.core.*;
import org.springframework.security.core.authority.*;
import org.springframework.security.core.userdetails.*;
import org.springframework.stereotype.*;

import java.util.*;

@Slf4j
@Component
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserDAO userDao;

    @Autowired
    private UserRoleDAO userRoleDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // fetch the user from the database = username is what the person entered into the username field on the login form
        // this User object is in the imports section
        User user = userDao.findByEmailIgnoreCase(username);

        //if the user is null then whatever the person entered on the login form does not exist in the database
        //automatically throw an exception
        if (user == null) {
            throw new UsernameNotFoundException("Username '" + username + "' not found in database");
        }

        // check the account status
        boolean accountIsEnabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;

        //I'm using the user object from the database to get the user roles
        List<UserRole> userRoles = userRoleDao.findByUserId(user.getId());
        // passing the user roles to create the granted authorities
        Collection<? extends GrantedAuthority> authorities = buildGrantAuthorities(userRoles);

        // this User object is part of Spring Security
        // because both objets are named User, we have to use the full path to the object
        UserDetails userDetails = new org.springframework.security.core.userdetails.User(
                user.getEmail(),  // this parameter is the username, in our case the user from the database
                user.getPassword(), // this is the users encrypted password from the database
                accountIsEnabled, // is this account enabled, if false, then spring security will deny access
                accountNonExpired,
                credentialsNonExpired,
                accountNonLocked,
                authorities); // this is the list of security roles that the user is Authorized to have

        return userDetails;
    }


    //this is the process of looping through the user and creating the GrantedAuthories
    //the GrantedAuthories are what Spring Security uses to determine if a user
    private Collection<? extends GrantedAuthority> buildGrantAuthorities(List<UserRole> userRoles) {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

        for (UserRole role : userRoles) {
            authorities.add(new SimpleGrantedAuthority(role.getRoleName()));
        }

        return authorities;
    }


}
