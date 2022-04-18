package com.teksystems.ecommerce_site.database.entity;

import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "productorder")
public class ProductOrder {

//    @Id
//    @ManyToOne
//    @JoinColumn(name = "product_ID")
//    private Product productID;
//
//    @Id
//    @ManyToOne
//    @JoinColumn(name = "order_ID")
//    private Order orderID;


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "productorder_ID")
    private Integer productorderID;


    @ManyToOne
    @JoinColumn(name = "product_ID")
    private Product productID;


    @ManyToOne
    @JoinColumn(name = "order_ID")
    private Order orderID;

    @Column(name = "quantity")
    private Integer quantity;
}