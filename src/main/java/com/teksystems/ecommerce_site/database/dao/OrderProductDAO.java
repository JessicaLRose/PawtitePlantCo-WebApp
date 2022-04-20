package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.Order;
import com.teksystems.ecommerce_site.database.entity.Product;
import com.teksystems.ecommerce_site.database.entity.OrderProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Map;

@Repository
public interface OrderProductDAO extends JpaRepository<OrderProduct, Long> {


    public OrderProduct findProductOrderByOrderAndProduct(@Param("order") Order o, @Param("product")Product p);

//    public OrderProduct savedCartItem(@Param("id") Integer id, @Param("product")Product product);

    // this is not necessarily in scope for the case study
    @Query(value= "select product_ID, quantity(*) as quant, prod.name from productorder po, products prod where po.product_ID = prod.product_ID group by product_ID",
            nativeQuery = true)
    List<Map<String,Object>> getProductNameAndOrderCount();

    // in your JSP you can do a for each
    // for each orderProduct var=op
    // ${op.cnt}   ${op.product_id} ${op.name}
    // end for each

}