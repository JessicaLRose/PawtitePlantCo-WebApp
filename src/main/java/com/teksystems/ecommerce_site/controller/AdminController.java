package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.OrderDAO;
import com.teksystems.ecommerce_site.database.dao.ProductDAO;
import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.Orders;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.formbean.ProductFormBean;
import com.teksystems.ecommerce_site.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.validation.Valid;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminController {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private OrderDAO orderDAO;

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
        productService.getProductDetails(productFormBean, product);
        productDAO.save(product);

        try {
            boolean deleteSuccess = (new File("productlog.txt")).delete();
            if (deleteSuccess) {
                log.info("productlog.txt deleted.");
            }
            BufferedWriter output = new BufferedWriter(new FileWriter("productlog.txt", true));
            List<Product> allProducts = productDAO.findAll();
            output.write("Last updated: " + new Date() + "\n");
            allProducts.forEach((Product) -> {
                try {
                    output.write("ID: " + Product.getId() + " " + Product.getProductName() + " " + Product.getProductCategory() + " " + Product.getProductPrice() + " " + Product.getCreateDate() + "\n");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            });
            output.flush();
            output.close();
        } catch (IOException e) {
            e.printStackTrace();
            log.error("Product output has failed.");
        }
        return new ModelAndView("redirect:/admin/productlisting");
    }

    @GetMapping("/admin/productEdit/{id}")
    public ModelAndView productEdit(@PathVariable("id") Integer id) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/productEdit");

        System.out.println(id);
        ProductFormBean productFormBean = new ProductFormBean();
        Product product = productDAO.findById(id);
        log.info(String.valueOf(product));
        System.out.println(product);

        productFormBean.setId(product.getId());
        productFormBean.setProductName(product.getProductName());
        productFormBean.setProductPrice(product.getProductPrice());
        productFormBean.setProductImage(product.getProductImage());
        productFormBean.setProductThumbnail(product.getProductThumbnail());
        productFormBean.setProductDescription(product.getProductDescription());
        productFormBean.setProductCategory(product.getProductCategory());
        productFormBean.setCreateDate(new Date());

        response.addObject("productFormBean", productFormBean);
        return response;
    }

    @PostMapping("/admin/productEdit/")
    public ModelAndView productEditConfirm(@Valid ProductFormBean productFormBean) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/productEdit");

        Product product = productDAO.findById(productFormBean.getId());
        productService.getProductDetails(productFormBean, product);
        productDAO.save(product);

        return new ModelAndView("redirect:/admin/productlisting");
    }

    @RequestMapping(value = "/admin/productlisting/delete", method = RequestMethod.GET)
    public ModelAndView productDelete(@RequestParam("id") Integer id) throws Exception {

        Product selectedProduct = productDAO.findById(id);

        if (selectedProduct == null) {
            log.info("product is null");
        } else {
            productDAO.delete(selectedProduct);
            System.out.println("product deleted");
        }
        return new ModelAndView("redirect:/admin/productlisting");
    }

    @RequestMapping(value = "/admin/usersListing", method = RequestMethod.GET)
    public ModelAndView adminUsers() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/usersListing");

        List<User> allUsers = userDAO.findAll();
        allUsers.forEach(user -> {
            log.info(user.getFirstName());
        });
        response.addObject("allUsers", allUsers);
        return response;
    }

    @RequestMapping(value = "/admin/ordersListing", method = RequestMethod.GET)
    public ModelAndView adminOrders() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/ordersListing");

        List<Orders> allOrders = orderDAO.findAll();

        response.addObject("allOrders", allOrders);
        return response;
    }
}