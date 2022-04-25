<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="/../../pub/css/navbarDash.css"/>" rel="stylesheet" type="text/css"/>

<title>Pawt&iuml;te Plant Co | Admin Dashboard</title>
</head>

<body>
<jsp:include page="../include/navbarAdmin.jsp"/>


<section class="section admin-edit">
    <div class="row justify-content-center edit-body">
        <div class="col-10 col-sm-8 col-md-8 col-xl-6 mx-auto my-auto">
            <div class="card">
                <div class="card-body shadow-lg">
                    <h1 class="card-title">Edit Product</h1>

<form action="/admin/productEdit/" method="post" id="editProduct">


    <%--                    <input type="number" name="productID" id="productID" class="form-control" style="visibility:hidden;" value="${product.productID}"/>--%>
    <input type="hidden" name="id" value="${productFormBean.id}"/>

    <div class="prod-name">
        <label for="edit-prod-name" class="label-default">product name</label>
        <input type="text" name="productName" id="edit-prod-name" class="input-default" value="${productFormBean.productName}">
    </div>

    <br>

    <div class="prod-cat">
        <label for="edit-prod-cat" class="label-default">product category</label>
        <input type="text" name="productCategory" id="edit-prod-cat" class="input-default" value="${productFormBean.productCategory}">
    </div>

    <br>

    <div class="prod-price">
        <label for="edit-prod-price" class="label-default">product price</label>
        <input type="text" name="productPrice" id="edit-prod-price" class="input-default" value="${productFormBean.productPrice}">
    </div>

    <br>

            <div class="prod-image">
               <span>the product image:</span>
                <br>
                <img src ="${productFormBean.productImage}"  class = "w-50" alt="plant 1" id="edit-prod-img">
                <br>
                Select Product Image URL: <input type="text" name="productImage" value="${productFormBean.productImage}">
                <br>

            </div>
            <br>
            <div class="prod-thumb">
                <span>the product thumbnail:</span>
                <br>
                <img src ="${productFormBean.productThumbnail}"  class = "w-50" alt="plant 1" id="edit-prod-thumb">
                <br>
                Select Product Thumbnail URL: <input type="text" name="productThumbnail" value="${productFormBean.productThumbnail}">
                <br>

            </div>

                    <br>
    <div class="prod-descrip">
        <label for="edit-prod-descrip" class="label-default">the product descrip:</label>
        <br>
        <input type="text" name="productDescription" id="edit-prod-descrip" class="input-default" value="${productFormBean.productDescription}">

        <br>
    </div>

        <button type="submit" class="btn" form="editProduct">Save Product</button>

</form>

                </div>
            </div>
        </div>
    </div>
</section>




<script type="text/javascript" src="../../../pub/js/script.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
