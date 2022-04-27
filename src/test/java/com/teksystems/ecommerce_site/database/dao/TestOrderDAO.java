package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.Orders;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;
import java.util.List;
import java.util.Optional;

@Slf4j
@DataJpaTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@AutoConfigureTestDatabase(replace= AutoConfigureTestDatabase.Replace.NONE)
public class TestOrderDAO {

    @Autowired
    private OrderDAO orderDAO;

    //create order
    @Test
    @Order(1)
    @Rollback(value = false)
    public void saveProduct(){
        Orders order = Orders.builder().cartStatus("PENDING").cardholderName("Yogi").paymentMethod("CreditCard").ccNumber("1111-1111-1111").build();
        Orders order2 = Orders.builder().cartStatus("COMPLETED").cardholderName("Bear").paymentMethod("CreditCard").ccNumber("1111-2222-3333").build();
        orderDAO.save(order);
        orderDAO.save(order2);

        log.info(String.valueOf(order));
        Assertions.assertTrue(order.getId() > 0);
    }

    @ParameterizedTest
    @Order(2)
    @ValueSource(strings = {"Yogi", "Bear"})
    public void findOrderTest(String cardholderName){
        Orders order = orderDAO.findByCardholderName(cardholderName);
        Assertions.assertNotNull(order);
    }

    @Test
    @Order(3)
    public void getOrderTest() {
        Orders order = orderDAO.findById(1);
        Assertions.assertEquals(1, order.getId());
    }
    @Test
    @Order(4)
    public void getOrderListTest() {
        List<Orders> orderList = orderDAO.findAll();
        Assertions.assertTrue(orderList.size() > 0);
    }
    @Test
    @Order(5)
    @Rollback(value = false)
    public void updateOrderTest() {
        Orders order = orderDAO.findById(1);
        order.setCartStatus("COMPLETED");
        Assertions.assertEquals(orderDAO.findById(1).getCartStatus(), order.getCartStatus());
    }
    @Test
    @Order(6)
    @Rollback(value = false)
    public void deleteOrderTest(){
        Orders order = orderDAO.findById(1);
        orderDAO.delete(order);
        Optional<Orders> optionalOrder = Optional.ofNullable(orderDAO.findById(order.getId()));
        Orders temporaryOrder = null;
        if(optionalOrder.isPresent()){
            temporaryOrder = orderDAO.findById(order.getId());
        }
        Assertions.assertNull(temporaryOrder);
    }
}