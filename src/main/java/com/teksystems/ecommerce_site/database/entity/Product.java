package com.teksystems.ecommerce_site.database.entity;

import lombok.*;
import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_ID")
    private Integer productID;

    @Column(name = "product_name")
    private String productName;

    @Column(name = "product_price")
    private Double productPrice;

    @Column(name = "product_stock")
    private Integer productStock;

    @Column(name = "product_image")
    private String productImage;

    @Column(name = "product_thumbnail")
    private String productThumbnail;

    @Column(name = "product_description")
    private String productDescription;

    @Column(name = "product_category")
    private String productCategory;

    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createDate = new Date();

//    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY,
//            cascade = CascadeType.ALL)
//    private Set<OrderProduct> orderProducts;

}