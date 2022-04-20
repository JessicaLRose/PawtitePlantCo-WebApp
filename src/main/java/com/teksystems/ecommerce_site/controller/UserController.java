package com.teksystems.ecommerce_site.controller;

import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.dao.UserRoleDAO;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.database.entity.UserRole;
import com.teksystems.ecommerce_site.formbean.AccountFormBean;
import com.teksystems.ecommerce_site.formbean.ProductFormBean;
import com.teksystems.ecommerce_site.formbean.RegistrationFormBean;
import com.teksystems.ecommerce_site.security.AuthenticatedUserService;
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
import org.springframework.web.bind.annotation.*;
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

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView create() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("register");

        RegistrationFormBean form = new RegistrationFormBean();
        response.addObject("form", form);

        return response;
    }

    @RequestMapping(value = "/registerSubmit", method = { RequestMethod.POST, RequestMethod.GET})
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

//    @RequestMapping(value = "/user/account", method = RequestMethod.GET)
//    public ModelAndView user() throws Exception {
//        ModelAndView response = new ModelAndView();
//        response.setViewName("user/account");
//        return response;
//    }

//    @GetMapping(value = "/user/account/{userID}")

    @RequestMapping(value = "/user/account/{userID}")
        public ModelAndView userAccount(@PathVariable("userID") Integer userID)  throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/account");

        AccountFormBean accountFormBean = new AccountFormBean();

            User user = userDAO.findByUserID(userID);
            log.info(String.valueOf(user));
            accountFormBean.setUserID(user.getUserID());
            accountFormBean.setEmail(user.getEmail());
            accountFormBean.setFirstName(user.getFirstName());
            accountFormBean.setLastName(user.getLastName());
            accountFormBean.setPhone(user.getPhone());


        response.addObject("accountFormBean", accountFormBean);
        return response;
    }

//    @PostMapping("/user/account/")

    @PostMapping(value = "/user/account/saved")
    public ModelAndView userAccountEdit(@Valid AccountFormBean accountFormBean) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/account/");

        User user = userDAO.findByUserID(accountFormBean.getUserID());

        userService.getUserDetails( accountFormBean, user);

        userDAO.save(user);
//        Integer userID = user.getUserID();
//        log.info(String.valueOf(userID));
        response.setViewName("redirect:/user/account/"+user.getUserID());
//        return new ModelAndView("redirect:/user/account/{userID}");
        return response;
    }

//    @RequestMapping(value = "/user/account/edit", method = RequestMethod.POST)
//    public ModelAndView editAccount(RegistrationFormBean registrationFormBean) throws Exception {
//        ModelAndView response = new ModelAndView();
//        response.setViewName("user/account/");
//
//        User user = AuthenticatedUserService.getCurrentUser();
//
//        user.setEmail(registrationFormBean.getEmail());
//        user.setFirstName(registrationFormBean.getFirstName());
//        user.setLastName(registrationFormBean.getLastName());
//        user.setPhone(registrationFormBean.getPhone());
//        user.setPassword(registrationFormBean.getPassword());
//
//        // in this case we are adding the RegisterFormBean to the model
//        userService.save(user);
//
//        return new ModelAndView("redirect:/user/account/");
//    }
}

