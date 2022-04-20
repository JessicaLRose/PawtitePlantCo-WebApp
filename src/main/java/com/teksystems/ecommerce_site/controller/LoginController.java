package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.formbean.RegistrationFormBean;
import com.teksystems.ecommerce_site.service.UserService;
import com.teksystems.ecommerce_site.database.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
@Slf4j
@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = "login/loginSubmit", method = RequestMethod.POST)
    public ModelAndView login(HttpSession session, @RequestParam String email, @RequestParam String password) throws Exception {
        ModelAndView response = new ModelAndView();
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String loggedUserEmail = authentication.getName();

        User user = userDAO.findByEmail(loggedUserEmail);

        if(user!= null){
            log.info(user.toString());
            response.addObject("user", user);

            session.setAttribute("user_id", user.getId()); // save the user_id in session
            response.setViewName("redirect:/home"); // redirect to home page
        } else {
            response.setViewName("home");
        }

        return response;
    }

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logout(HttpSession session){

        session.invalidate(); // delete the user id stored in session
        return "redirect:/home";
    }

//    @RequestMapping(value = "/admin/productlisting", method = RequestMethod.GET)
//    public ModelAndView admin() throws Exception {
//        ModelAndView response = new ModelAndView();
//        response.setViewName("admin/productListing");
//        return response;
//    }


    @RequestMapping(value = "/admin/registeredUsers", method = RequestMethod.GET)
    public ModelAndView admin2() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/usersListing");
        return response;
    }

}

