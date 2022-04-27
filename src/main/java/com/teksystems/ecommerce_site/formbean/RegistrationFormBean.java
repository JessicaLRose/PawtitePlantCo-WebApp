package com.teksystems.ecommerce_site.formbean;

import com.teksystems.ecommerce_site.validation.EmailUnique;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Getter
@Setter
@ToString
public class RegistrationFormBean {

    private Integer Id;

    @NotBlank(message = "First name is required")
    private String firstName;

    @NotBlank(message = "Last name is required")
    private String lastName;

    @EmailUnique(message = "Email already exists in database.")
    @NotBlank(message = "Email is required")
    @Email(message = "Email format is invalid.")
    private String email;

    @Length(min = 3, max = 15, message="Password must be between 3 and 15 characters")
    @NotBlank(message = "Password is required")
    private String password;

    @NotBlank(message = "Confirm Password is required")
    private String confirmPassword;

    @NotBlank(message = "Phone Number is required")
    private String phone;
}
