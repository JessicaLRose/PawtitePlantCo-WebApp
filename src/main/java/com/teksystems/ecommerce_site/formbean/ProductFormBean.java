package com.teksystems.ecommerce_site.formbean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.math.BigDecimal;
import java.util.Date;

@Getter
@Setter
@ToString
public class ProductFormBean {

    private Integer id;

    private String productName;

    private BigDecimal productPrice;

    private String productImage;

    private String productThumbnail;

    private String productDescription;

    private String productCategory;

    private Date createDate = new Date();
}
