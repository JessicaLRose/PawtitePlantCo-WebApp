package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.OrderDAO;
import com.teksystems.ecommerce_site.database.dao.OrderProductDAO;
import com.teksystems.ecommerce_site.database.dao.ProductDAO;
import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.OrderProduct;
import com.teksystems.ecommerce_site.database.entity.Orders;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.formbean.OrderFormBean;
import com.teksystems.ecommerce_site.formbean.RegistrationFormBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
public class CheckoutController {

    @Autowired
    private OrderProductDAO orderProductDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = "/shop/checkout", method = RequestMethod.GET)
    public ModelAndView checkout() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("shop/checkout");

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String loggedUserEmail = authentication.getName();
        User user = userDAO.findByEmail(loggedUserEmail);

        List<Map<String, Object>> cartProducts = orderProductDAO.getCartProducts(user.getId(), "PENDING");
        response.addObject("cartProducts", cartProducts);

        log.info("cart product list: " + cartProducts.toString());

        double getSubTotal = 0.0;
        double salesTax = .08;
        double calculateSalesTax = 0.0;
        double getCartTotal = 0.0;

        for (Map<String, Object> row : cartProducts) {
            BigDecimal price = (BigDecimal) row.get("total");
            getSubTotal += price.doubleValue();
            calculateSalesTax = getSubTotal * salesTax;
            getCartTotal = getSubTotal + calculateSalesTax;
        }
        response.addObject("subTotal", getSubTotal);
        response.addObject("salesTax", calculateSalesTax);
        response.addObject("cartTotal", getCartTotal);
        return response;
    }

    @RequestMapping(value = "/shop/checkoutSubmit", method = {RequestMethod.POST})
    public ModelAndView checkoutSubmit(@Valid OrderFormBean orderFormBean, BindingResult bindingResult) throws Exception {
        ModelAndView response = new ModelAndView();

        if (bindingResult.hasErrors()) {
            for (FieldError error : bindingResult.getFieldErrors()) {
                log.debug(error.toString());
            }
            response.addObject("bindingResult", bindingResult);
            response.addObject("orderFormBean", orderFormBean);
            response.setViewName("shop/checkout");
        } else {

            Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
            String loggedUserEmail = authentication.getName(); // get current users email
            User user = userDAO.findByEmail(loggedUserEmail); // find user from db with this email
            Orders orders = orderDAO.findByUserIdAndCartStatus(user.getId(), "PENDING"); // find current users' cart

            orders.setCardholderName(orderFormBean.getCardholderName());
            orders.setPaymentMethod(orderFormBean.getPaymentMethod());
            orders.setCcNumber(orderFormBean.getCcNumber());

            orders.setCartStatus("COMPLETE");
            Orders completedOrder = orderDAO.save(orders);

            response.addObject("completedOrder", completedOrder);
            response.setViewName("redirect:/home");

            return response;
        }
        return response;
    }
}