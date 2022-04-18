package com.teksystems.ecommerce_site.service;

import com.teksystems.ecommerce_site.database.dao.UserDAO;
import com.teksystems.ecommerce_site.database.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    @Autowired
    UserDAO userDAO;

    //get current logged-in user detail. in order to edit, and save it.
    public User getCurrentUser()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if (auth instanceof AnonymousAuthenticationToken) {
            return null;
        }

        org.springframework.security.core.userdetails.User principal
                = (org.springframework.security.core.userdetails.User) auth.getPrincipal();

        User user = this.userDAO.findByEmail(principal.getUsername());

        return user;
    }

    public boolean isCurrentUser(User user) {
        User currentUser = getCurrentUser();

        if (user == null || currentUser == null)
        {
            return false;
        }

        return user.getUserID().equals(getCurrentUser().getUserID());
    }

    public User save(User user) {
        return userDAO.save(user);
    }
}