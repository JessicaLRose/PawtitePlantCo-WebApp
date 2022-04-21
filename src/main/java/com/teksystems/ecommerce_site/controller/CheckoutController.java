package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.OrderProductDAO;
import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;



@Slf4j
@Controller
public class CheckoutController {

    @Autowired
    private OrderProductDAO orderProductDAO;

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = "/shop/checkout", method = RequestMethod.GET)
    public ModelAndView checkout() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("shop/checkout");

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
        String loggedUserEmail = authentication.getName(); // get current users email
        User user = userDAO.findByEmail(loggedUserEmail); // find user from db with this email

        // new query for producing list of all products in the cart
        List<Map<String,Object>> cartProducts = orderProductDAO.getCartProducts(1,"PENDING");
        response.addObject("cartProducts", cartProducts);

        log.info("cart product list: " + cartProducts.toString());

        return response;
    }

}