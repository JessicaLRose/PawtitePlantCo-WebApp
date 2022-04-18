<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarDash.css"/>" rel="stylesheet" type="text/css"/>

<title>Pawt&iuml;te Plant Co | Admin Dashboard</title>
</head>

<body>
<jsp:include page="../include/navbarAdmin.jsp"/>


<%--<div class="modal" id="editModal" tabindex="-1" aria-labelledby="edit-product">--%>

<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title" id="edit-product">Edit Product</h5>--%>
<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<jstlC:forEach items="${productFormBean}" var="product">
                <form action="/admin/productEdit/" id="editProduct">

<%--                    <input type="number" name="productID" id="productID" class="form-control" style="visibility:hidden;" value="${product.productID}"/>--%>
                    <input type="hidden" name="productID" value="${product.productID}"/>

                    <div class="prod-name">
                        <label for="edit-prod-name" class="label-default">product name</label>
                        <input type="text" name="productName" id="edit-prod-name" class="input-default" value="${product.productName}">
                    </div>

                    <br>

                    <div class="prod-cat">
                        <label for="edit-prod-cat" class="label-default">product category</label>
                        <input type="text" name="productCategory" id="edit-prod-cat" class="input-default" value="${product.productCategory}">
                    </div>

                    <br>

                    <div class="prod-price">
                        <label for="edit-prod-price" class="label-default">product price</label>
                        <input type="text" name="productPrice" id="edit-prod-price" class="input-default" value="${product.productPrice}">
                    </div>

                    <br>

                    <div class="prod-stock">
                        <label for="edit-prod-stock" class="label-default">product stock</label>
                        <input type="text" name="productStock" id="edit-prod-stock" class="input-default" value="${product.productStock}">
                    </div>

                    <br>

                    <%--                    <form action="/upload" method="POST" enctype="multipart/form-data">--%>

                    <%--                        <div class="prod-image">--%>
                    <%--                           <span>the product image:</span>--%>
                    <%--                            <img src ="${product.productImage}" alt="plant 1" id="add-prod-img">--%>
                    <%--                            <br>--%>
                    <%--                            Select Product Image : <input type="file" name="prod-image" />--%>
                    <%--                            <br>--%>

                    <%--                        </div>--%>
                    <%--                        <br>--%>
                    <%--                        <div class="prod-thumb">--%>
                    <%--                            <span>the product thumbnail:</span>--%>
                    <%--                            <br>--%>
                    <%--                            <img src ="${product.productImage}" alt="plant 1" id="add-prod-thumb">--%>
                    <%--                            <br>--%>
                    <%--                            Select Product Thumbnail : <input type="file" name="prod-thumb" />--%>
                    <%--                            <br>--%>

                    <%--                        </div>--%>
                    <%--                        <br>--%>

                    <%--                    </form>--%>

                    <div class="prod-descrip">
                        <label for="edit-prod-descrip" class="label-default">the product descrip:</label>
                        <br>
                        <input type="text" name="productDescription" id="edit-prod-descrip" class="input-default" value="${product.productDescription}">

                        <br>
                    </div>

                </form>
</jstlC:forEach>

<%--            </div>--%>
<%--            <div class="modal-footer">--%>
                <a href="#" class="btn" id="close-edit" data-bs-dismiss="modal">Close</a>
                <button type="submit" class="btn" form="editProduct">Save Product</button>
<%--            </div>--%>

<%--        </div>--%>


<%--</div>--%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>