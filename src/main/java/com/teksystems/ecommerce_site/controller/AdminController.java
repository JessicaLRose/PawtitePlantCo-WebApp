package com.teksystems.ecommerce_site.controller;


import com.teksystems.ecommerce_site.database.dao.ProductDAO;

import com.teksystems.ecommerce_site.database.entity.Product;

import com.teksystems.ecommerce_site.formbean.ProductFormBean;
import com.teksystems.ecommerce_site.service.ProductService;
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
public class AdminController {

    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private ProductService productService;


    @RequestMapping(value = "/admin/productlisting", method = RequestMethod.GET)
    public ModelAndView adminProduct(@Valid ProductFormBean productFormBean) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/productListing");

        List<Product> allProducts = productDAO.findAll();
        response.addObject("allProducts", allProducts);

        return response;
    }

    @RequestMapping(value = "/admin/productlisting/productSubmit", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView productSubmit(@Valid ProductFormBean productFormBean) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/productlisting");

        response.addObject("productFormBean", productFormBean);

        Product product = new Product();
        productService.getProductDetails( productFormBean, product);

        productDAO.save(product);

        return new ModelAndView("redirect:/admin/productlisting");
    }

//    @GetMapping("/admin/productlisting/edit/{productID}")
//    public ModelAndView productEdit(@PathVariable("productID") Integer productID) throws Exception {
//        ModelAndView response = new ModelAndView();
//        response.setViewName("admin/productlisting/edit/");
//
//        Product product = productDAO.findByProductID(productID);
//
//        ProductFormBean productFormBean = new ProductFormBean();
//
////        productService.getProductDetails( productFormBean, product);
//
//        productFormBean.setProductID(productID);
//        productFormBean.setProductName(product.getProductName());
//        productFormBean.setProductPrice(product.getProductPrice());
//        productFormBean.setProductStock(product.getProductStock());
//        productFormBean.setProductImage(product.getProductImage());
//        productFormBean.setProductThumbnail(product.getProductThumbnail());
//        productFormBean.setProductDescription(product.getProductDescription());
//        productFormBean.setProductCategory(product.getProductCategory());
//        productFormBean.setCreateDate(new Date());
//
//
//        // in this case we are adding the RegisterFormBean to the model
//        response.addObject("productFormBean", productFormBean);
//
//        return response;
//    }


        @GetMapping("/admin/productEdit/{productID}")
    public ModelAndView productEdit(@PathVariable("productID") Integer productID) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/productEdit/");

        Product product = productDAO.findByProductID(productID);

        ProductFormBean productFormBean = new ProductFormBean();

//        productService.getProductDetails( productFormBean, product);

        productFormBean.setProductID(product.getProductID());
        productFormBean.setProductName(product.getProductName());
        productFormBean.setProductPrice(product.getProductPrice());
        productFormBean.setProductStock(product.getProductStock());
        productFormBean.setProductImage(product.getProductImage());
        productFormBean.setProductThumbnail(product.getProductThumbnail());
        productFormBean.setProductDescription(product.getProductDescription());
        productFormBean.setProductCategory(product.getProductCategory());
        productFormBean.setCreateDate(new Date());


        // in this case we are adding the RegisterFormBean to the model
        response.addObject("productFormBean", productFormBean);

        return response;
    }
}