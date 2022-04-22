package com.teksystems.ecommerce_site.formbean;

import com.teksystems.ecommerce_site.database.entity.User;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@ToString
public class OrderFormBean {

    private Integer id;

    private User user;

    private String cartStatus;

    private String cardholderName;

    private String paymentMethod;

    private String ccNumber;

    private Date orderDate = new Date();


}
