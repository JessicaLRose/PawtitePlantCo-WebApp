package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.ProductOrders;
import com.teksystems.ecommerce_site.database.entity.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductOrdersDAO extends JpaRepository<ProductOrders, Long> {

    List<ProductOrders> findByProductID(@Param("productID") Integer productID);

}