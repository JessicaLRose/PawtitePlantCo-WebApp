<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarDash.css"/>" rel="stylesheet" type="text/css"/>

<title>Pawt&iuml;te Plant Co | Admin Dashboard</title>
</head>

<body>
<jsp:include page="../include/navbarAdmin.jsp"/>

<!--Add Product Modal -->

<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="add-product" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="add-product">Add Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <form action="/admin/productlisting/productSubmit" method="post" id="addProduct">

                    <div class="prod-image">
                        <label for="add-prod-img" class="label-default">Select Product Image URL :</label>
                        <br><br>
                        <input type="text" name="productImage" id="add-prod-img" class="input-default" value="${product.productImage}">
                    </div>

                    <br>

                    <div class="prod-thumb">
                        <label for="add-prod-thumb" class="label-default">Select Product Thumbnail URL :</label>
                        <br><br>
                        <input type="text" name="productThumbnail" id="add-prod-thumb" class="input-default" value="${product.productThumbnail}">
                    </div>

                    <br>

                    <div class="prod-name">
                        <label for="add-prod-name" class="label-default">Product Name :</label>
                        <br><br>
                        <input type="text" name="productName" id="add-prod-name" class="input-default" value="${product.productName}">
                    </div>

                    <br>

                    <div class="prod-cat">
                        <label for="add-prod-cat" class="label-default">Product Category :</label>
                        <br><br>
                        <input type="text" name="productCategory" id="add-prod-cat" class="input-default" value="${product.productCategory}">
                    </div>

                    <br>

                    <div class="prod-price">
                        <label for="add-prod-price" class="label-default">Product Price :</label>
                        <input type="text" name="productPrice" id="add-prod-price" class="input-default" value="${product.productPrice}">
                    </div>

                    <br>

                    <div class="prod-descrip">
                        <label for="add-prod-descrip" class="label-default">Product Description:</label>
                        <br><br>
                        <textarea form="addProduct" name="productDescription" id="add-prod-descrip" class="input-default" value="${product.productDescription}"></textarea>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" id="close-add" data-bs-dismiss="modal">Close</a>
                <button type="submit" class="btn" form="addProduct">Save Product</button>
            </div>

        </div>

    </div>
</div>

<%--edit Product Modal--%>

<%--<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="edit-product" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title" id="edit-product">Edit Product</h5>--%>
<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>

<%--                <form action="/admin/productEdit/saved" method="post" id="editProduct">--%>



<%--                    <input type="hidden" name="id" value="${productFormBean.id}"/>--%>

<%--                    <div class="prod-name">--%>
<%--                        <label for="edit-prod-name" class="label-default">product name</label>--%>
<%--                        <input type="text" name="productName" id="edit-prod-name" class="input-default" value="${productFormBean.productName}">--%>
<%--                    </div>--%>

<%--                    <br>--%>

<%--                    <div class="prod-cat">--%>
<%--                        <label for="edit-prod-cat" class="label-default">product category</label>--%>
<%--                        <input type="text" name="productCategory" id="edit-prod-cat" class="input-default" value="${productFormBean.productCategory}">--%>
<%--                    </div>--%>

<%--                    <br>--%>

<%--                    <div class="prod-price">--%>
<%--                        <label for="edit-prod-price" class="label-default">product price</label>--%>
<%--                        <input type="text" name="productPrice" id="edit-prod-price" class="input-default" value="${productFormBean.productPrice}">--%>
<%--                    </div>--%>
<%--                    --%>
<%--                    <br>--%>
<%--                    --%>
<%--                    <div class="prod-descrip">--%>
<%--                        <label for="edit-prod-descrip" class="label-default">the product descrip:</label>--%>
<%--                        <br>--%>
<%--                        <input type="text" name="productDescription" id="edit-prod-descrip" class="input-default" value="${productFormBean.productDescription}">--%>

<%--                        <br>--%>
<%--                    </div>--%>

<%--                </form>--%>

<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <a href="#" class="btn" id="close-edit" data-bs-dismiss="modal">Close</a>--%>
<%--                <button type="submit" class="btn" form="editProduct">Save Product</button>--%>

<%--            </div>--%>

<%--        </div>--%>

<%--    </div>--%>
<%--</div>--%>

<!--Delete Product Modal -->

<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="delete-product" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="delete-product"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <br>

                <center>Are you sure you want to delete this product?</center>


                <br>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" id="close-delete-product" data-bs-dismiss="modal">Close</a>

                <form action="/admin/productlisting/delete" method="get" id="deleteProduct"><input type="hidden" name ="id" id="finalDelete" value=""> <button type="submit" class="btn" form="deleteProduct">Delete Product</button></form>

            </div>
        </div>
    </div>
</div>


<section class="admin-listing d-flex justify-content-center">

    <div class=" table-responsive table-wrapper shadow">
        <div class="table-title ">
            <div class="row d-flex ">
                <div class="col-sm-6">
                    <h3>Manage <b>Products</b></h3>
                </div>
                <div class="col-sm-5">
                    <div class="search-box">
                        <div class="input-group">
                            <input type="text" id="list-search" class="form-control" placeholder="search here...">
                        </div>
                    </div>
                </div>
                <div class="col-sm-1 ">
                    <a href="#" class="add" title="Add New" data-toggle="tooltip" data-placement="bottom" data-bs-toggle="modal" data-bs-target="#addModal">
                        <i class="fa-solid fa-square-plus"></i>
                    </a>
                </div>
            </div>
        </div>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Product ID #</th>
                <th>Image</th>
                <th>Thumbnail</th>
                <th>Name</th>
                <th>Category</th>
                <th>Description</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <jstlC:forEach items = "${allProducts}" var = "product">
            <tr>

                <td>${product.id}</td>

                <jstlC:choose>
                <jstlC:when test= "${product.productImage != '' && product.productThumbnail != ''}" >
                <td><img src ="${product.productImage}" alt="img" id="show-prod-img"></td>
                <td><img src ="${product.productThumbnail}" alt="img" id="show-prod-thumb"></td>
                </jstlC:when>
                <jstlC:otherwise>
                <td><img src ="../../../pub/img/placeholder.png" alt="image" id="show-null-img"></td>
                <td><img src ="../../../pub/img/placeholder.png" alt="image" id="show-null-thumb"></td>
                </jstlC:otherwise>
                </jstlC:choose>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td><textarea id="show-prod-descrip">${product.productDescription}</textarea></td>
                <td>$${product.productPrice}</td>
                <td>
                    <a href="/admin/productEdit/${product.id}" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-pen-to-square"></i></a>
<%--                    <a href="/admin/productlisting/edit/${product.id}" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom" data-bs-toggle="modal" data-bs-target="#editModal" data-bs-whatever="${product.id}"><i class="fa-solid fa-pen-to-square"></i></a>--%>
                    <a href="/admin/productlisting/delete/${product.id}" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom" data-bs-toggle="modal" data-bs-target="#deleteModal" data-bs-whatever="${product.id}"><i class="fa-solid fa-circle-minus"></i></a>

                </td>
            </tr>
            </jstlC:forEach>

            </tbody>
        </table>
    </div>

</section>

<script type="text/javascript" src="../../../pub/js/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<%--<script>--%>
<%--                var editModal = document.getElementById('editModal')--%>
<%--                editModal.addEventListener('show.bs.modal', function (event) {--%>
<%--                // Button that triggered the modal--%>
<%--                var editbutton = event.relatedTarget--%>
<%--                // Extract info from data-bs-* attributes--%>

<%--                var editedProductID = editbutton.getAttribute('data-bs-whatever')--%>
<%--                console.log("hug me im upsetti" + editedProductID);--%>
<%--                console.log("hug me im upsetti");--%>
<%--                // If necessary, you could initiate an AJAX request here--%>
<%--                // and then do the updating in a callback.--%>
<%--                //--%>
<%--                // Update the modal's content.--%>

<%--                // var modalBodyInput = editModal.querySelector('.modal-body input')--%>
<%--                var editProduct = document.getElementById("finalEdit");--%>
<%--                editProduct.value= editedProductID;--%>

<%--                })--%>
<%--                </script>--%>

<script>
var deleteModal = document.getElementById('deleteModal')
deleteModal.addEventListener('show.bs.modal', function (event) {
// Button that triggered the modal
var button = event.relatedTarget
// Extract info from data-bs-* attributes

var selectedProductID = button.getAttribute('data-bs-whatever')

var modalBodyInput = deleteModal.querySelector('.modal-body input')
var deleteProduct = document.getElementById("finalDelete");
    deleteProduct.value= selectedProductID;

})
</script>

</body>
</html>
