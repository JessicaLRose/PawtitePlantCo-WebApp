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

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_ID")
    private Integer productID;

    @Column(name = "order_ID")
    private Integer orderID;

    @Column(name = "quantity")
    private Integer quantity;
}