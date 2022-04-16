package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public interface UserRoleDAO extends JpaRepository<UserRole, Long> {

    List<UserRole> findByUserRoleID(@Param("UserRoleID") Integer userID);
}
