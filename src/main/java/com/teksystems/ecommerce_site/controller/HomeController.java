package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.formbean.RegistrationFormBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class HomeController {

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = {"/" ,"/home"}, method = RequestMethod.GET)
    public ModelAndView create(HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("home");

//        RegistrationFormBean form = new RegistrationFormBean();
//        response.addObject("form", form);
        Integer id = (Integer) session.getAttribute("user_id");
        User u = userDAO.findByUserID(id);

        if (u != null)log.info(u.toString());
        u = userDAO.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
        if (u != null)log.info(u.toString());
        response.addObject("user", u);
        return response;
    }
}
