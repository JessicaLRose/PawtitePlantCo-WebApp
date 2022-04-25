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

    public OrderProduct findProductOrderByOrdersAndProduct(@Param("orders") Orders orders, @Param("product")Product product);

    @Query(value=" SELECT p.id AS product_id, op.id AS row_id, p.product_name, p.product_price, p.product_image, op.quantity, o.id AS order_id, (p.product_price * op.quantity) AS total " +
            " FROM product p, orderproduct op, orders o " +
            " WHERE p.id = op.product_id AND o.id = op.order_id " +
            " AND o.user_id = :userId AND cart_status = :cartStatus", nativeQuery = true)
    List<Map<String,Object>> getCartProducts(@Param("userId") Integer userId, @Param("cartStatus") String cartStatus);




    // this is not necessarily in scope for the case study
    @Query(value=" select product_id, count(*) as cnt, p.name from order_products op, products p where op.product_id = p.id group by product_id",
            nativeQuery = true)
    List<Map<String,Object>> getProductNameAndOrderCount();

    // in your JSP you can do a for each
    // for each orderProduct var=op
    // ${op.cnt}   ${op.product_id} ${op.name}
    // end for each

}