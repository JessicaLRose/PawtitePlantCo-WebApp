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
    @Column(name = "id")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name="user_id") //pointing to primary from 'users' table
    private User user;

    @Column(name = "cart_status")
    private String cartStatus;

    @Column(name = "cardholder_name")
    private String cardholderName;

    @Column(name = "payment_method")
    private String paymentMethod;

    @Column(name = "cc_number")
    private String ccNumber;

    @Column(name = "order_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date orderDate = new Date();

}