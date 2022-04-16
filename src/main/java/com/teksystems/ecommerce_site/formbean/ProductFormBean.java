package com.teksystems.ecommerce_site.formbean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;

@Getter
@Setter
@ToString
public class ProductFormBean {


    private Integer productID;


    private String productName;


    private Double productPrice;


    private Integer productStock;


    private String productImage;


    private String productThumbnail;


    private String productDescription;


    private String productCategory;

    private Date createDate = new Date();
}
