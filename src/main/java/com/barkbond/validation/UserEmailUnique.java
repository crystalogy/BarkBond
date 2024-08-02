package com.barkbond.validation;

import jakarta.validation.*;

import java.lang.annotation.*;

@Documented
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface UserEmailUnique {

    String message() default "{UserEmailUnique}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};


}