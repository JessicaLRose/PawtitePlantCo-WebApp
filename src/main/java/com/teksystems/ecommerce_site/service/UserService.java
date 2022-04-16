package com.teksystems.ecommerce_site.service;

import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    UserDAO userDAO;

    public boolean validateLogin(String email, String password){
        User u = userDAO.findByEmail(email);
        if(u != null) { // if user exists with this email
            if(u.getPassword().equals(password)){ // AND the password is correct
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

}
