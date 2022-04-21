package com.teksystems.ecommerce_site.database.dao;

import com.teksystems.ecommerce_site.database.entity.Orders;
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

    public OrderProduct findById(@Param("id") Integer id);

    public List<OrderProduct> findByOrders(@Param("order") Orders orders);

    public OrderProduct findProductOrderByOrdersAndProduct(@Param("order") Orders orders, @Param("product")Product product);

//    public OrderProduct savedCartItem(@Param("id") Integer id, @Param("product")Product product);

    // this is not necessarily in scope for the case study
    @Query(value=" select product_id, count(*) as cnt, p.name from order_products op, products p where op.product_id = p.id group by product_id",
            nativeQuery = true)
    List<Map<String,Object>> getProductNameAndOrderCount();

    // in your JSP you can do a for each
    // for each orderProduct var=op
    // ${op.cnt}   ${op.product_id} ${op.name}
    // end for each

}