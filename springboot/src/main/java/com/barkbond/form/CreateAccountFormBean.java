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

//    @NotEmpty
//    private String userName;

    @NotEmpty
    private String email;

    @NotEmpty
    private String password;
}