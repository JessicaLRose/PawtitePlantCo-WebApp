package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.dao.UserRoleDAO;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.database.entity.UserRole;
import com.teksystems.ecommerce_site.formbean.ProductFormBean;
import com.teksystems.ecommerce_site.formbean.RegistrationFormBean;
import com.teksystems.ecommerce_site.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
public class UserController {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private UserRoleDAO userRoleDAO;

    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @RequestMapping(value = "user/register", method = RequestMethod.GET)
    public ModelAndView create() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/register");

        RegistrationFormBean form = new RegistrationFormBean();
        response.addObject("form", form);

        return response;
    }

    @RequestMapping(value = "/user/registerSubmit", method = { RequestMethod.POST, RequestMethod.GET})
    public ModelAndView registerSubmit(@Valid RegistrationFormBean form, BindingResult bindingResult, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();

        log.info(form.toString());

        if (bindingResult.hasErrors()) {

            for (ObjectError error : bindingResult.getAllErrors()) {
                log.info( ((FieldError)error).getField() + " " +  error.getDefaultMessage());
            }
            response.addObject("form", form);

            response.addObject("bindingResult", bindingResult);

            response.setViewName("user/register");
            return response;
        }

        User user = new User();

        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setEmail(form.getEmail());
        user.setPhone(form.getPhone());
        user.setCreateDate(new Date());

        String password = passwordEncoder.encode(form.getPassword());
        user.setPassword(password);

        User newUser = userDAO.save(user);


        // create and save the user role object
        UserRole userRole = new UserRole();
        userRole.setUserRoleID(newUser.getUserID());
        userRole.setUserRole("USER");

        userRoleDAO.save(userRole);

        session.setAttribute("user_id", newUser.getUserID()); // save the user_id in session

        log.info(form.toString());

        log.info(form.toString());

        response.setViewName("redirect:/home");

        return response;
    }

    @RequestMapping(value = "/user/account", method = RequestMethod.GET)
    public ModelAndView user() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/account");
        return response;
    }

    @GetMapping("/user/account/{userID}")
    //public ModelAndView editUser(@RequestParam("userId") Integer userId) throws Exception {
    public ModelAndView editAccount(@PathVariable("userID") Integer userID) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/account/");

        User user = userDAO.findByUserID(userID);

        RegistrationFormBean registrationFormBean = new RegistrationFormBean();

        registrationFormBean.setUserID(user.getUserID());
        registrationFormBean.setEmail(user.getEmail());
        registrationFormBean.setFirstName(user.getFirstName());
        registrationFormBean.setLastName(user.getLastName());
        registrationFormBean.setPhone(user.getPhone());
        registrationFormBean.setPassword(user.getPassword());
        registrationFormBean.setConfirmPassword(user.getPassword());

        // in this case we are adding the RegisterFormBean to the model
        response.addObject("registrationFormBean", registrationFormBean);

        return response;
    }
}

