package com.barkbond.form;

import jakarta.validation.constraints.*;
import lombok.*;

@Getter
@Setter
public class CreateAccountFormBean {

    @NotEmpty
    private String email;

    @NotEmpty
    private String password;

    @NotEmpty
    private String fullName;

}