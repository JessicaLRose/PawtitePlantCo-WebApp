package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.Orders;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.User;
import com.teksystems.ecommerce_site.database.entity.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDAO extends JpaRepository<Product, Long> {

        public Product findById(@Param("id") Integer id); //returns one product, useful to add to cart

        public List<Product> findProductsByProductCategory(String productCategory);

        @Query(value =  "SELECT p FROM Product p, OrderProduct op, Orders o WHERE p = op.product AND o = op.orders AND o.user = :user AND o.cartStatus = 'PENDING'")
                public List<Product> findProductsByProductIdAndOrdersIdAndCartStatus(@Param("user") User user);



//        @Query(value = "SELECT * FROM orders WHERE user_id = :userId AND cart_status = :cartStatus", nativeQuery = true)
//        public Orders findByUserIdAndCartStatus(@Param("userId") Integer userId, @Param("cartStatus") String cartStatus);
        }