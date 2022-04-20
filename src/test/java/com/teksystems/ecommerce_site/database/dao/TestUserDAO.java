package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.User;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

@DataJpaTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@AutoConfigureTestDatabase(replace= AutoConfigureTestDatabase.Replace.NONE)
public class TestUserDAO {

//    @Autowired
//    private UserDAO userDAO;
//
//    @Autowired
//    private OrderDAO orderDAO;
//
//    @Test
//    @Order(1)
//    @Rollback(value = false)
//    public void saveUserTest() {
//        User user = User.builder().firstName("fName").;
//        userDAO.save(user);
//        Order order = Order.builder().
//        orderDAO.save(order);
//
//        Assertions.assertThat(order.getOrderID()).isGreaterThan(0);
//    }
//
//    @Test
//    @Order(2)
//    @Rollback(value = false)
//    public void getUserTest(){
//        User user = userDAO.getUserID(1);
//        Assertions.assertThat(user.getUserID().isEqualTo(1));
//
//    }
}
