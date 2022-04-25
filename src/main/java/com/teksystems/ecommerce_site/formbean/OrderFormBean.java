package com.teksystems.ecommerce_site.formbean;

import com.teksystems.ecommerce_site.database.entity.User;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.Date;

@Getter
@Setter
@ToString
public class OrderFormBean {

    private Integer id;

    private User user;

    private String cartStatus;

    @NotBlank(message="Please fill out the name on your card")
    private String cardholderName;

    @NotNull(message="Please select your payment method")
    private String paymentMethod;

//    @Pattern(regexp = "^([0-9]{4}[\\s-]?){3}([0-9]{4})$", message = "Credit Card number is invalid")
    private String ccNumber;

    private Date orderDate = new Date();


}
