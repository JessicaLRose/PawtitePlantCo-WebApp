package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.ProductDAO;

import com.teksystems.ecommerce_site.database.entity.Product;

import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.formbean.AccountFormBean;
import com.teksystems.ecommerce_site.formbean.ProductFormBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Slf4j
@Controller
public class ProductController {

    @Autowired
    private ProductDAO productDAO;

    @RequestMapping(value = "/shop/products", method = RequestMethod.GET)
    public ModelAndView shop() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("shop/products");

        List<Product> allProducts = productDAO.findAll();
        List<Product> softProducts = productDAO.findProductsByProductCategory("soft");
        List<Product> hardyProducts = productDAO.findProductsByProductCategory("hardy");
        List<Product> accessoriesProducts = productDAO.findProductsByProductCategory("accessories");
//        List<Product> product;  //saying products exist, and will be a list of the product

        response.addObject("allProducts", allProducts);
        response.addObject("softProducts", softProducts);
        response.addObject("hardyProducts", hardyProducts);
        response.addObject("accessoriesProducts", accessoriesProducts);

        System.out.println(hardyProducts);
        System.out.println(accessoriesProducts);

        return response;
    }

    @GetMapping("/shop/products/details/{id}")
    public ModelAndView productEdit(@PathVariable("id") Integer id) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("/shop/products/details");

        ProductFormBean productFormBean = new ProductFormBean();

        Product product = productDAO.findById(id);

            log.info(String.valueOf(id));

//        productService.getProductDetails( productFormBean, product);

        productFormBean.setId(product.getId());
        productFormBean.setProductName(product.getProductName());
        productFormBean.setProductPrice(product.getProductPrice());
        productFormBean.setProductStock(product.getProductStock());
        productFormBean.setProductImage(product.getProductImage());
        productFormBean.setProductThumbnail(product.getProductThumbnail());
        productFormBean.setProductDescription(product.getProductDescription());

        // in this case we are adding the RegisterFormBean to the model
        response.addObject("product", productFormBean);

        log.info(String.valueOf(productFormBean));

        return response;
    }

//    @RequestMapping(value = "/shop/products/view", method = {RequestMethod.GET})
//    public ModelAndView product(@Valid ProductFormBean productFormBean) throws Exception {
//        ModelAndView response = new ModelAndView();
//        response.setViewName("shop/products/view");
//
//        Product product = productDAO.findByProductID(productFormBean.getProductID());
//        product.setProductName(productFormBean.getProductName());
//        product.setProductPrice(productFormBean.getProductPrice());
//        product.setProductStock(productFormBean.getProductStock());
//        product.setProductImage(productFormBean.getProductImage());
//        product.setProductThumbnail(productFormBean.getProductThumbnail());
//        product.setProductDescription(productFormBean.getProductDescription());
//        product.setProductCategory(productFormBean.getProductCategory());
//        product.setCreateDate(new Date());
//
//            return response;
//        }

}
