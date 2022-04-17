package com.teksystems.ecommerce_site.database.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "order")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_ID")
    private Integer orderID;

    @Column(name = "customer_ID")
    private Integer customerID;

    @Column(name = "cart_status")
    private String cartStatus;

    @Column(name = "cardholder_name")
    private String cardholderName;

    @Column(name = "cc_number")
    private String ccNumber;

    @Column(name = "order_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date orderDate = new Date();

}