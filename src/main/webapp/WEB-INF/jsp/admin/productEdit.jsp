<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="/../../../pub/css/navbarDash.css"/>" rel="stylesheet" type="text/css"/>

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

                        <input type="hidden" name="id" value="${productFormBean.id}"/>

                <jstlC:choose>
                    <jstlC:when test="${productFormBean.productImage != '' && productFormBean.productThumbnail != ''}">
                        <div class="prod-image">
                            <label>Current Product Image:</label>
                            <br>
                            <img src="${productFormBean.productImage}" class="w-50" alt="image" id="current-prod-img">
                            <br><br>
                            <label for="edit-prod-img" class="label-default">Select Product Image URL :</label>
                            <br><br>
                            <input type="text" name="productImage" id="edit-prod-img" value="${productFormBean.productImage}">
                        </div>

                        <br>

                        <div class="prod-thumb">
                            <label>Current Product Thumbnail :</label>
                            <br><br>
                            <img src="${productFormBean.productThumbnail}" class="w-50" alt="image" id="current-prod-thumb">
                            <br><br>
                            <label for="edit-prod-thumb" class="label-default">Select Product Thumbnail URL:</label>
                            <br><br>
                            <input type="text" name="productThumbnail" id="edit-prod-thumb" value="${productFormBean.productThumbnail}">
                        </div>
                    </jstlC:when>
                    <jstlC:otherwise>
                        <div class="prod-image">
                        <label>Current Product Image:</label>
                        <br>
                            <img src ="../../../pub/img/placeholder.png" class="w-50" alt="image" id="current-prod-img">
                        <br><br>
                        <label for="edit-prod-img" class="label-default">Select Product Image URL :</label>
                        <br><br>
                        <input type="text" name="productImage" id="edit-prod-img" value="${productFormBean.productImage}">
                        </div>

                        <br>

                        <div class="prod-thumb">
                        <label>Current Product Thumbnail :</label>
                        <br><br>
                            <img src ="../../../pub/img/placeholder.png" class="w-50" alt="image" id="current-prod-thumb">
                        <br><br>
                        <label for="edit-prod-thumb" class="label-default">Select Product Thumbnail URL:</label>
                        <br><br>
                        <input type="text" name="productThumbnail" id="edit-prod-thumb" value="${productFormBean.productThumbnail}">
                        </div>
                    </jstlC:otherwise>
                </jstlC:choose>

                        <br>

                        <div class="prod-name">
                            <label for="edit-prod-name" class="label-default">Edit Product Name :</label>
                            <br><br>
                            <input type="text" name="productName" id="edit-prod-name" class="input-default" value="${productFormBean.productName}">
                        </div>

                        <br>

                        <div class="prod-cat">
                            <label for="edit-prod-cat" class="label-default">Edt Product Category :</label>
                            <br><br>
                            <input type="text" name="productCategory" id="edit-prod-cat" class="input-default"
                                   value="${productFormBean.productCategory}">
                        </div>

                        <br>

                        <div class="prod-price">
                            <label for="edit-prod-price" class="label-default">Edit Product Price :</label>
                            <br><br>
                            <input type="text" name="productPrice" id="edit-prod-price" class="input-default" value="${productFormBean.productPrice}">
                        </div>

                        <br>

                        <div class="prod-descrip">
                            <label for="edit-prod-descrip" class="label-default">Edit Product Description :</label>
                            <br><br>
                            <textarea form="editProduct" name="productDescription" id="edit-prod-descrip" class="input-default" value="${productFormBean.productDescription}">${productFormBean.productDescription}</textarea>
                        </div>

                            <br><br>

                        <button type="submit" class="btn" form="editProduct">Save Product</button>

                    </form>

                </div>
            </div>
        </div>
    </div>
</section>


<script type="text/javascript" src="../../../pub/js/script.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
