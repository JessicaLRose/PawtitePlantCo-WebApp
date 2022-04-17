
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarMain.css"/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value="../pub/css/products.css"/>" rel="stylesheet" type="text/css"/>
<title>Pawt&iuml;te Plant Co | Shop</title>
</head>

<body>

<jsp:include page="../include/navbarMain.jsp"/>

<!-- Vertically centered modal -->
<jstlC:forEach items = "${allProducts}" var = "product">
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 image-container">
                            <div class="big-image">
                                <img src="../../../pub/img/cart-plant-1.png" alt="">
                            </div>
                            <div class="small-image">
                                <img src="../../../pub/img/featured-plant-1.png" alt="">
                                <img src="../../../pub/img/placeholder.png" alt="">
                                <img src="../../../pub/img/placeholder.png" alt="">
                            </div>
                        </div>
                        <div class="col-md-6 ms-auto description-container">
                            <h1 class="product-name">product name</h1>
                            <br>
                            <p class="text-container">Vinyl irony 8-bit, bespoke put a bird on it health goth portland direct trade pork belly YOLO mixtape post-ironic. Letterpress copper mug taiyaki migas put a bird on it roof party vice neutra butcher blog heirloom mustache brunch everyday carry.</p>

                            <div class="product-price fw-bold">
                                <span>$ 9.99</span>
                            </div>
                            <br>
                            <div>
                                <a href="#" class="btn position-absolute bottom-0 end-0" id="cart-add"><i class="fa fa-shopping-cart"></i><span> Add to Cart</span></a>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
</jstlC:forEach>


<!-- product page starts -->

<section class="banner-area">
    <h1 class="banner-text"><span><i class="fa-solid fa-bag-shopping"></i></span> Shop</h1>
    <span><i class="fa-solid fa-bag-shopping"></i></span>
</section>



<!-- <div id="search-container">
  <input
    type="search"
    id="search-input"
    placeholder="Search product name here.."
  />
  <button id="search">Search</button>
</div> -->
<!-- collection -->
<section>
    <div id = "collection" class = "py-5">
        <div class = "container">


            <div class = "row">
                <div class = "col-md-12">
                    <!-- Nav tabs -->
                    <div class="tab-filters">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="all-tab" data-bs-toggle="tab" data-bs-target="#all-products" type="button" role="tab" aria-controls="all-products" aria-selected="true">All</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="soft-tab" data-bs-toggle="tab" data-bs-target="#soft" type="button" role="tab" aria-controls="soft" aria-selected="false">Soft</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="hardy-tab" data-bs-toggle="tab" data-bs-target="#hardy" type="button" role="tab" aria-controls="hardy" aria-selected="false">Hardy</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="accessories-tab" data-bs-toggle="tab" data-bs-target="#accessories" type="button" role="tab" aria-controls="accessories" aria-selected="false">Accessories</button>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="all-products" role="tabpanel" aria-labelledby="all-tab">
                                <div class = "collection-list mt-4 row gx-0 gy-3">

                                    <jstlC:forEach items = "${allProducts}" var = "product">
                                        <div class = "col-md-6 col-lg-4 col-xl-3 p-2 all">
                                            <div class = "collection-img position-relative">
                                                <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" >
                                                    <img src ="${product.productImage}" class = "w-100" alt="">
                                                    <img src ="${product.productThumbnail}" class = "secondary-img w-100" alt="">
                                                </button>
                                            </div>
                                            <div class ="text-center">
                                                <p class ="fw-bold product-name">${product.productName}</p>
                                                <span class = "fw-bolder product-price">${product.productPrice}</span>
                                            </div>
                                        </div>
                                    </jstlC:forEach>

                                </div>
                            </div>

                            <div class="tab-pane" id="soft" role="tabpanel" aria-labelledby="soft-tab">
                                <div class = "collection-list mt-4 row gx-0 gy-3">

                                    <jstlC:forEach items = "${softProducts}" var = "product">
                                        <div class = "col-md-6 col-lg-4 col-xl-3 p-2 all">
                                            <div class = "collection-img position-relative">
                                                <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" >
                                                    <img src ="${product.productImage}" class = "w-100" alt="">
                                                    <img src ="${product.productThumbnail}" class = "secondary-img w-100" alt="">
                                                </button>
                                            </div>
                                            <div class ="text-center">
                                                <p class ="fw-bold product-name">${product.productName}</p>
                                                <span class = "fw-bolder product-price">${product.productPrice}</span>
                                            </div>
                                        </div>
                                    </jstlC:forEach>

                                    <div class="tab-pane" id="hardy" role="tabpanel" aria-labelledby="hardy-tab">
                                        <div class = "collection-list mt-4 row gx-0 gy-3">

                                            <%--                                    <jstlC:forEach items = "${hardyProducts}" var = "hardyProducts">--%>
                                            <%--                                        <div class = "col-md-6 col-lg-4 col-xl-3 p-2 all">--%>
                                            <%--                                            <div class = "collection-img position-relative">--%>
                                            <%--                                                <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" >--%>
                                            <%--                                                    <img src ="${hardyProducts.productImage}" class = "w-100" alt="">--%>
                                            <%--                                                    <img src ="${hardyProducts.productThumbnail}" class = "secondary-img w-100" alt="">--%>
                                            <%--                                                </button>--%>
                                            <%--                                            </div>--%>
                                            <%--                                            <div class ="text-center">--%>
                                            <%--                                                <p class ="fw-bold product-name">${hardyProducts.productName}</p>--%>
                                            <%--                                                <span class = "fw-bolder product-price">${hardyProducts.productPrice}</span>--%>
                                            <%--                                            </div>--%>
                                            <%--                                        </div>--%>
                                            <%--                                    </jstlC:forEach>--%>

                                        </div>
                                    </div>

                                    <div class="tab-pane" id="accessories" role="tabpanel" aria-labelledby="accessories-tab">
                                        <div class = "collection-list mt-4 row gx-0 gy-3">

                                            <jstlC:forEach items = "${accessoriesProducts}" var = "product">
                                                <div class = "col-md-6 col-lg-4 col-xl-3 p-2 all">
                                                    <div class = "collection-img position-relative">
                                                        <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" >
                                                            <img src ="${product.productImage}" class = "w-100" alt="">
                                                            <img src ="${product.productThumbnail}" class = "secondary-img w-100" alt="">
                                                        </button>
                                                    </div>
                                                    <div class ="text-center">
                                                        <p class ="fw-bold product-name">${product.productName}</p>
                                                        <span class = "fw-bolder product-price">${product.productPrice}</span>
                                                    </div>
                                                </div>
                                            </jstlC:forEach>

                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>


</section>

<jsp:include page="../include/footer.jsp" />