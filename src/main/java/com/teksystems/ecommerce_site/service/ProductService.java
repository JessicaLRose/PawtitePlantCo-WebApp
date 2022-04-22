package com.teksystems.ecommerce_site.service;

import com.teksystems.ecommerce_site.database.dao.ProductDAO;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.formbean.ProductFormBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.validation.Valid;
import java.util.Date;

@Component
@Service
public class ProductService {

    @Autowired
    ProductDAO productDAO;

    public void getProductDetails(@Valid ProductFormBean productFormBean, Product product) {
        product.setId(productFormBean.getId());
        product.setProductName(productFormBean.getProductName());
        product.setProductPrice(productFormBean.getProductPrice());
        product.setProductImage(productFormBean.getProductImage());
        product.setProductThumbnail(productFormBean.getProductThumbnail());
        product.setProductDescription(productFormBean.getProductDescription());
        product.setProductCategory(productFormBean.getProductCategory());
        product.setCreateDate(new Date());
    }

}
