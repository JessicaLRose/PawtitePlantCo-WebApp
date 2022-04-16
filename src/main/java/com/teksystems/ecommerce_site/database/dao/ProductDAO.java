package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDAO extends JpaRepository<Product, Long> {

        public Product findByProductID(Integer productID); //returns one product, useful to add to cart

        public List<Product> findProductsByProductCategory(String productCategory);

        }