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

    @Query(value = "SELECT * FROM orders WHERE user_id = :userId AND cart_status = :cartStatus", nativeQuery = true)
    public Order findByUserIdAndCartStatus(@Param("userId") Integer userId, @Param("cartStatus") String cartStatus);

    public List<Order> findAllByUser(@Param("user") User user);

}
