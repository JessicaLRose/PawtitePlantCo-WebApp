package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.OrderDAO;
import com.teksystems.ecommerce_site.database.dao.ProductDAO;
import com.teksystems.ecommerce_site.database.dao.ProductOrderDAO;
import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.Order;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.ProductOrder;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class BasketController {

    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private ProductOrderDAO productOrderDAO;

    @Autowired
    private ProductService productService;

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
    public ModelAndView addToCart(@PathVariable("id") Long prod_id) {
        ModelAndView response = new ModelAndView();
        response.setViewName("redirect:/cart/checkout");
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
        String loggedUserEmail = authentication.getName(); // get current users email
        User u = userDAO.findByEmail(loggedUserEmail); // find user from db with this email

        Order order = orderDAO.findOrderByUser_UserIDAndAndCartStatus(u.getUserID(), "PENDING"); // find current users' cart
        if(order == null){ // if there are no pending orders for this user aka: no active cart
            order = new Order(); // create a new one
            order.setCartStatus("PENDING");
            order.setUser(u); // assign this cart to the current user
            order = orderDAO.save(order); // save to db and reassign "order" variable to DB response (this ensures we have the correct id from sql auto-increment)
        }
        // getting the user order, if null, creating one
        Product p = productDAO.getById(prod_id);
        ProductOrder cartItem = productOrderDAO.findProductOrderByOrderAndProduct(order, p); // is this item already in the cart?
        if(cartItem == null){ // if not, add it
            cartItem = new ProductOrder();
            cartItem.setOrder(order);
            cartItem.setProduct(p);
            cartItem.setQuantity(1);
        } else {
            cartItem.setQuantity(cartItem.getQuantity() + 1); // if the item is already in the cart, just increment qty
        }
        cartItem = productOrderDAO.save(cartItem);
        log.info("added: " + cartItem.getProduct().getProductName());
        return response;
    }



//
//    if (order == null) {
//        order = new Order();
//        order.setCustomerID(customerID);

//    }




}
