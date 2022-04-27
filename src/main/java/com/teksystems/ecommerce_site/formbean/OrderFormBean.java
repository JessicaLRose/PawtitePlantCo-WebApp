package com.teksystems.ecommerce_site.formbean;

import com.teksystems.ecommerce_site.database.entity.User;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import javax.validation.constraints.NotBlank;
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

    @NotBlank(message="Please select your payment method")
    private String paymentMethod;

    @NotBlank(message="Please fill out your card number")
    private String ccNumber;

    private Date orderDate = new Date();
}
