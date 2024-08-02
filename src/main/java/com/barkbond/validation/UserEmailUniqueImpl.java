//package com.barkbond.validation;
//
//
//import com.barkbond.database.dao.*;
//import com.barkbond.database.entity.*;
//import jakarta.validation.*;
//import lombok.extern.slf4j.*;
//import org.slf4j.*;
//import org.springframework.beans.factory.annotation.*;
//import org.springframework.util.*;
//
//public class UserEmailUniqueImpl implements ConstraintValidator<UserEmailUnique, String> {
//    public static final Logger LOG = LoggerFactory.getLogger(UserEmailUniqueImpl.class);
//
//    @Autowired
//    private UserDAO UserDao;
//
//
//    @Override
//    public boolean isValid(String value, ConstraintValidatorContext context) {
//        // a test should only do one thing, so we should check for null first
//        // always return true on null ... this is a pattern in creating test cases within JSR 303
//        // it's a good practice to always return true when your input value is null or empty
//        if (StringUtils.isEmpty(value)) {
//            return true;
//        }
//
////        //UserMSQL user = userService.findByEmailIgnoreCase(value);
////        User User = UserDAO.findByEmailIgnoreCase(value);
//
//        // this validation returns true when the email is NOT in the database
//        return (User == null);
//    }
//
//
//}