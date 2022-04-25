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

        }