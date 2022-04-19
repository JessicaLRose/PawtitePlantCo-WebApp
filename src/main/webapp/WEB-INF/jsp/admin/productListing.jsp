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

<%--                                    <form action="/upload" method="POST" enctype="multipart/form-data">--%>

<%--                                        <div class="prod-image">--%>
<%--                                           <span>the product image:</span>--%>
<%--                                            <img src ="${product.productImage}" alt="plant 1" id="add-prod-img">--%>
<%--                                            <br>--%>
<%--                                            Select Product Image : <input type="file" name="prod-image" />--%>
<%--                                            <br>--%>

<%--                                        </div>--%>
<%--                                        <br>--%>
<%--                                        <div class="prod-thumb">--%>
<%--                                            <span>the product thumbnail:</span>--%>
<%--                                            <br>--%>
<%--                                            <img src ="${product.productImage}" alt="plant 1" id="add-prod-thumb">--%>
<%--                                            <br>--%>
<%--                                            Select Product Thumbnail : <input type="file" name="prod-thumb" />--%>
<%--                                            <br>--%>

<%--                                        </div>--%>
<%--                                        <br>--%>

<%--                                    </form>--%>

                <form action="/admin/productlisting/productSubmit" method="post" id="addProduct">

                    <div class="prod-name">
                        <label for="add-prod-name" class="label-default">product name</label>
                        <input type="text" name="productName" id="add-prod-name" class="input-default" value="${product.productName}">
                    </div>

                    <br>

                    <div class="prod-cat">
                        <label for="add-prod-cat" class="label-default">product category</label>
                        <input type="text" name="productCategory" id="add-prod-cat" class="input-default" value="${product.productCategory}">
                    </div>

                    <br>

                    <div class="prod-price">
                        <label for="add-prod-price" class="label-default">product price</label>
                        <input type="text" name="productPrice" id="add-prod-price" class="input-default" value="${product.productPrice}">
                    </div>

                    <br>

                    <div class="prod-stock">
                        <label for="add-prod-stock" class="label-default">product stock</label>
                        <input type="text" name="productStock" id="add-prod-stock" class="input-default" value="${product.productStock}">
                    </div>

                    <br>

                    <div class="prod-descrip">
                        <label for="add-prod-descrip" class="label-default">the product descrip:</label>
                        <br>
                        <input type="text" name="productDescription" id="add-prod-descrip" class="input-default" value="${product.productDescription}">
                        <br>
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

<!--Edit Product Modal -->

<%--                <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="edit-product" aria-hidden="true">--%>
<%--                    <div class="modal-dialog">--%>
<%--                        <div class="modal-content">--%>
<%--                            <div class="modal-header">--%>
<%--                                <h5 class="modal-title" id="edit-product">Edit Product</h5>--%>
<%--                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                            </div>--%>
<%--                            <div class="modal-body">--%>

<%--                                <form action="/admin/productlisting/edit/{productID}" method="get" id="editProduct">--%>

<%--                                    <input type="hidden" name="productID" id="finalEdit" value=""/>--%>

<%--                                    <div class="prod-name">--%>
<%--                                        <label for="edit-prod-name" class="label-default">product name</label>--%>
<%--                                        <input type="text" name="productName" id="edit-prod-name" class="input-default" value="${productFormBean.productName}">--%>
<%--                                    </div>--%>

<%--                                    <br>--%>

<%--                                    <div class="prod-cat">--%>
<%--                                        <label for="edit-prod-cat" class="label-default">product category</label>--%>
<%--                                        <input type="text" name="productCategory" id="edit-prod-cat" class="input-default" value="${productFormBean.productCategory}">--%>
<%--                                    </div>--%>

<%--                                    <br>--%>

<%--                                    <div class="prod-price">--%>
<%--                                        <label for="edit-prod-price" class="label-default">product price</label>--%>
<%--                                        <input type="text" name="productPrice" id="edit-prod-price" class="input-default" value="${productFormBean.productPrice}">--%>
<%--                                    </div>--%>

<%--                                    <br>--%>

<%--                                    <div class="prod-stock">--%>
<%--                                        <label for="edit-prod-stock" class="label-default">product stock</label>--%>
<%--                                        <input type="text" name="productStock" id="edit-prod-stock" class="input-default" value="${productFormBean.productStock}">--%>
<%--                                    </div>--%>

<%--                                    <br>--%>

<%--                                    &lt;%&ndash;                    <form action="/upload" method="POST" enctype="multipart/form-data">&ndash;%&gt;--%>

<%--                                    &lt;%&ndash;                        <div class="prod-image">&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                           <span>the product image:</span>&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            <img src ="${product.productImage}" alt="plant 1" id="add-prod-img">&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            <br>&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            Select Product Image : <input type="file" name="prod-image" />&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            <br>&ndash;%&gt;--%>

<%--                                    &lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                        <br>&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                        <div class="prod-thumb">&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            <span>the product thumbnail:</span>&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            <br>&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            <img src ="${product.productImage}" alt="plant 1" id="add-prod-thumb">&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            <br>&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            Select Product Thumbnail : <input type="file" name="prod-thumb" />&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                            <br>&ndash;%&gt;--%>

<%--                                    &lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--                                    &lt;%&ndash;                        <br>&ndash;%&gt;--%>

<%--                                    &lt;%&ndash;                    </form>&ndash;%&gt;--%>

<%--                                    <div class="prod-descrip">--%>
<%--                                        <label for="edit-prod-descrip" class="label-default">the product descrip:</label>--%>
<%--                                        <br>--%>
<%--                                        <input type="text" name="productDescription" id="edit-prod-descrip" class="input-default" value="${productFormBean.productDescription}">--%>

<%--                                        <br>--%>
<%--                                    </div>--%>

<%--                                </form>--%>

<%--                            </div>--%>
<%--                            <div class="modal-footer">--%>
<%--                                <a href="#" class="btn" id="close-edit" data-bs-dismiss="modal">Close</a>--%>
<%--                                <form action="/admin/productlisting/edit/savechanges" method="post" id="editProductSubmit"><button type="submit" class="btn" form="editProductSubmit">Save Product</button></form>--%>
<%--&lt;%&ndash;                                <button type="submit" class="btn" form="editProduct">Save Product</button>&ndash;%&gt;--%>

<%--                            </div>--%>

<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>

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
<%--                <button type="submit" class="btn" form="deleteProduct">Delete Product</button>--%>
<%--                        <jstlC:forEach items="${selectedProduct}" var="selectedProduct">--%>
                <form action="/admin/productlisting/delete" method="get" id="deleteProduct"><input type="hidden" name ="productID" id="finalDelete" value=""> <button type="submit" class="btn" form="deleteProduct">Delete Product</button></form>
<%--                        </jstlC:forEach>--%>
<%--                <a href="/admin/productlisting/delete${product.productID}" class="btn" form="deleteProduct" id="edit-delete-product" >Delete Product</a>--%>
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
                <th>ID#</th>
                <th>Image</th>
                <th>Thumbnail</th>
                <th>Name</th>
                <th>Category</th>
                <th>Description</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <jstlC:forEach items = "${allProducts}" var = "product">
            <tr>

                <td>${product.productID}</td>
                <td><img src ="${product.productImage}" alt="plant 1" id="show-prod-img"></td>
                <td><img src ="${product.productThumbnail}" alt="plant 1" id="show-prod-thumb"></td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td><textarea id="show-prod-descrip">${product.productDescription}</textarea></td>
                <td>$ ${product.productPrice}</td>
                <td>${product.productStock}</td>
                <td>
                    <a href="/admin/productEdit/${product.productID}" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-pen-to-square"></i></a>
<%--                    <a href="/admin/productlisting/edit/${product.productID}" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom" data-bs-toggle="modal" data-bs-target="#editModal" data-bs-whatever="${product.productID}"><i class="fa-solid fa-pen-to-square"></i></a>--%>
                    <a href="/admin/productlisting/delete/${product.productID}" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom" data-bs-toggle="modal" data-bs-target="#deleteModal" data-bs-whatever="${product.productID}"><i class="fa-solid fa-circle-minus"></i></a>
<%--                    <a href="#" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom" data-bs-toggle="modal" data-bs-target="#deleteModal"><i class="fa-solid fa-circle-minus"></i></a>--%>
                </td>
            </tr>
            </jstlC:forEach>

            </tbody>
        </table>
    </div>

</section>


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
    console.log("hug me im upsetti" + selectedProductID);
    console.log("hug me im upsetti");
// If necessary, you could initiate an AJAX request here
// and then do the updating in a callback.
//
// Update the modal's content.

var modalBodyInput = deleteModal.querySelector('.modal-body input')
var deleteProduct = document.getElementById("finalDelete");
    deleteProduct.value= selectedProductID;

})
</script>
<%--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>--%>
<%--<script>--%>
<%--    $(document).on('shown.bs.modal','#editCustomerModal', function () {--%>

<%--        var product = this.dataset.productID;--%>
<%--        var id = $('#productID').val(productID);--%>
<%--        var productName= $('#productName').val();--%>
<%--        var productPrice= $('#productPrice').val();--%>
<%--        var productStock= $('#productStock').val();--%>
<%--        var productDescription= $('#productDescription').val();--%>
<%--        var productCategory= $('#productCategory').val();--%>


<%--        $.ajax({--%>
<%--            type: "post",--%>
<%--            url: "/http://localhost:8080/admin/productlisting/edit/?id="--%>
<%--            cache: false,--%>
<%--            contentType:'application/json',--%>
<%--            dataType: 'json',--%>
<%--            data:"customerName="+ customerName + "&contactName=" + contactName +  "&street=" + street +--%>
<%--                "&state=" + state + "&zipCode=" + zipCode + "&country=" + country +"&email=" + email ,--%>
<%--            success: function(response){--%>
<%--                alert("inside edit modal");--%>
<%--                var obj = JSON.parse(response);--%>
<%--                $('#customerName').val(obj.userName);--%>
<%--                $('#contactName').val(obj.userName);--%>
<%--                $('#email').val(obj.userName);--%>
<%--                $('#street').val(obj.userName);--%>
<%--                $('#zipCode').val(obj.userName);--%>
<%--                $('#state').val(obj.userName);--%>
<%--                $('#country').val(obj.userName);--%>
<%--            },--%>
<%--            error: function(){--%>
<%--                alert('Error while edit request..');--%>
<%--            }--%>
<%--        });--%>
<%--?productName=&productCategory=&productPrice=&productStock=&productDescription=--%>

<%--    });--%>
<%--</script>--%>
</body>
</html>
