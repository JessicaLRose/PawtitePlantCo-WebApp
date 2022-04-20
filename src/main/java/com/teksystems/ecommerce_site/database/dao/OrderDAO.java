package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.Order;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface OrderDAO extends JpaRepository<Order, Long> {
    public Order findOrderByUser_UserIDAndAndCartStatus(@Param("user_id") Integer customerID, @Param("PENDING") String cartStatus);

}
