package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.OrderDAO;
import com.teksystems.ecommerce_site.database.dao.ProductDAO;
import com.teksystems.ecommerce_site.database.dao.OrderProductDAO;
import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.Orders;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.OrderProduct;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.formbean.OrderFormBean;
import com.teksystems.ecommerce_site.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.criteria.Order;
import java.util.List;

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


//        //cant see cart unless logged in either in sidebar or official checkout page
//        //show this error message on the jsp page if attempting to go there? at least in pop up
//        //or maybe a 403 page that says you dont have access, allows redirect home
//        //get user info from authentication to create a cart with order_ID that connects to user_ID and to session
//        //if cart null, make new cart if adding cartline
//        //if cart not null, just add new cartline with that product quantity + 1
//        //
//
    @RequestMapping(value = "/cart/addItem/{id}") // ex: /cart/addItem/3 (pointing to product with id of 3)
    public ModelAndView addToCart(@PathVariable("id") Integer id) {
        ModelAndView response = new ModelAndView();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
        String loggedUserEmail = authentication.getName(); // get current users email
        User user = userDAO.findByEmail(loggedUserEmail); // find user from db with this email

        log.info("found user: " + user.getId());


//        List<Order> orderList = orderDAO.findAllByUser(user);
//        System.out.println(orderList);
        Orders orders = orderDAO.findByUserIdAndCartStatus(1, "PENDING"); // find current users' cart
//        Order order = orders.get(0);

        if(orders == null){ // if there are no pending orders for this user aka: no active cart
            orders = new Orders(); // create a new one
            orders.setCartStatus("PENDING");
            orders.setUser(user); // assign this cart to the current user
            orders = orderDAO.save(orders); // save to db and reassign "order" variable to DB response (this ensures we have the correct id from sql auto-increment)
        }
        // getting the user order, if null, creating one
        Product product = productDAO.findById(id);
        OrderProduct cartItem = orderProductDAO.findProductOrderByOrdersAndProduct(orders, product); // is this item already in the cart?
        if(cartItem == null){ // if not, add it
            cartItem = new OrderProduct();
            cartItem.setOrders(orders);
            cartItem.setProduct(product);
            cartItem.setQuantity(1);
        } else {
            cartItem.setQuantity(cartItem.getQuantity() + 1); // if the item is already in the cart, just increment qty
        }
        OrderProduct savedCartItem = orderProductDAO.save(cartItem);
        response.addObject("savedCartItem", savedCartItem);
        log.info("added: " + cartItem.getProduct().getProductName());


        response.setViewName("redirect:/shop/checkout");
//        return ModelAndView("redirect:/shop/checkout/{userId}");
        return response;
    }



//
//    if (order == null) {
//        order = new Order();
//        order.setCustomerID(customerID);

//    }




}
