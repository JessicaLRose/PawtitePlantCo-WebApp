package com.teksystems.ecommerce_site.service;

import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.formbean.AccountFormBean;
import com.teksystems.ecommerce_site.formbean.ProductFormBean;
import com.teksystems.ecommerce_site.formbean.RegistrationFormBean;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Date;

@Component
@Service
public class UserService {

    @Autowired
    UserDAO userDAO;

    public void getUserDetails(@Valid AccountFormBean accountFormBean, User user) {
        user.setId(accountFormBean.getId());
        user.setFirstName(accountFormBean.getFirstName());
        user.setLastName(accountFormBean.getLastName());
        user.setEmail(accountFormBean.getEmail());
        user.setPhone(accountFormBean.getPhone());
        user.setCreateDate(new Date());
    }
}