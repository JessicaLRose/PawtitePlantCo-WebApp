package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface  UserDAO  extends JpaRepository<User, Long> {

    public User findById(@Param("id") Integer id);


    // there is 3 ways to execute a query
    // 1) via @Query with JPA / JQL / HQL
    // 2) via @Query with a native query
    // 3) by using a function for spring to do the query with no query

    public List<User> findUsersById(Integer id);
//    public List<User> findByFirstName(@Param("firstName") String firstName);

    // this is a native query which is SQL like you would execute in workbench
    @Query(value = "select * from users where email = :email", nativeQuery = true)
    // this is a JPA Query is a hibernate JLQ or HQL query
    // @Query("select u from User u where u.email = :email")
    public User findByEmail(@Param("email") String email);

    // select * from user where upper(first_name) like '%:firstName%';
    public List<User> findByFirstNameIgnoreCaseContaining(@Param("firstName") String firstName);

    public List<User> findByFirstNameAndLastName(@Param("firstName") String firstName, @Param("lastName") String lastName);
}