package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.Orders;
import com.teksystems.ecommerce_site.database.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDAO extends JpaRepository<Orders, Long> {

    @Query(value = "SELECT * FROM orders WHERE user_id = :userId AND cart_status = :cartStatus", nativeQuery = true)
    public Orders findByUserIdAndCartStatus(@Param("userId") Integer userId, @Param("cartStatus") String cartStatus);

    @Query(value="SELECT o FROM Orders o ORDER BY o.cartStatus DESC")
    public List<Orders> findAll();

    public Orders findById(@Param("id") Integer id);

    public Orders findByCardholderName(@Param("cardholderName") String cardholderName);

}
