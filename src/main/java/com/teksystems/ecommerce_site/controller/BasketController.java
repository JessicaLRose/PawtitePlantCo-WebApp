package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.OrderDAO;
import com.teksystems.ecommerce_site.database.dao.ProductDAO;
import com.teksystems.ecommerce_site.database.dao.OrderProductDAO;
import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.Orders;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.OrderProduct;
import com.teksystems.ecommerce_site.database.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
public class BasketController {

    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private OrderProductDAO orderProductDAO;

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = "/cart/addItem/{id}")
    public ModelAndView addToCart(@PathVariable("id") Integer id) {
        ModelAndView response = new ModelAndView();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String loggedUserEmail = authentication.getName();
        User user = userDAO.findByEmail(loggedUserEmail);

        log.info("found user: " + user.getId());

        Orders orders = orderDAO.findByUserIdAndCartStatus(user.getId(), "PENDING");

        if(orders == null){
            orders = new Orders();
            orders.setCartStatus("PENDING");
            orders.setCardholderName("waiting for details");
            orders.setCcNumber("waiting for details");
            orders.setPaymentMethod("waiting for details");
            orders.setUser(user);
            orders = orderDAO.save(orders);
        }

        Product product = productDAO.findById(id);
        OrderProduct cartItem = orderProductDAO.findProductOrderByOrdersAndProduct(orders, product);
        if(cartItem == null){ // if not, add it
            cartItem = new OrderProduct();
            cartItem.setOrders(orders);
            cartItem.setProduct(product);
            cartItem.setQuantity(1);
        } else {
            cartItem.setQuantity(cartItem.getQuantity() + 1);
        }
        OrderProduct savedCartItem = orderProductDAO.save(cartItem);
        response.addObject("savedCartItem", savedCartItem);
        log.info("added: " + cartItem.getProduct().getProductName());

        response.setViewName("redirect:/shop/checkout");

        return response;
    }

    @RequestMapping(value = "/cart/deleteItem/{id}", method = RequestMethod.GET)
    public ModelAndView productRemove(@PathVariable("id") Integer id) throws Exception {

        OrderProduct selectedCartLine = orderProductDAO.findById(id);

        if ( selectedCartLine == null ) {
            log.info("selectedCartLine is null");
        } else {
            orderProductDAO.delete(selectedCartLine);
            System.out.println("product removed from cart");
        }
        return new ModelAndView("redirect:/shop/checkout");
    }
}
