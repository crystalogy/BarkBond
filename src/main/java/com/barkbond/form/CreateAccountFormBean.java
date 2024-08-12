package com.barkbond.form;

import jakarta.validation.constraints.*;
import lombok.*;

@Getter
@Setter
public class CreateAccountFormBean {

    @NotEmpty
    private String firstName;

    @NotEmpty
    private String lastName;

    @NotEmpty
    @Email(message = "Please provide a valid email address")
    private String username;

    @NotEmpty
    @Size(min = 8, message = "Password must be at least 8 characters long")
    private String password;

    private String role;

}