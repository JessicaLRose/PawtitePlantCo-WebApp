<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarMain.css"/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value="../pub/css/products.css"/>" rel="stylesheet" type="text/css"/>
<title>Pawt&iuml;te Plant Co | Shop</title>
</head>

<body>

<jsp:include page="../include/navbarMain.jsp"/>

<section class="banner-area">
    <h1 class="banner-text"><span><i class="fa-solid fa-bag-shopping"></i></span> Shop</h1>
    <span><i class="fa-solid fa-bag-shopping"></i></span>
</section>

<section>
    <div id="collection" class="py-5">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <!-- Nav tabs -->
                    <div class="tab-filters">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="all-tab" data-bs-toggle="tab"
                                        data-bs-target="#all-products" type="button" role="tab"
                                        aria-controls="all-products" aria-selected="true">All
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="soft-tab" data-bs-toggle="tab" data-bs-target="#soft"
                                        type="button" role="tab" aria-controls="soft" aria-selected="false">Soft
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="hardy-tab" data-bs-toggle="tab" data-bs-target="#hardy"
                                        type="button" role="tab" aria-controls="hardy" aria-selected="false">Hardy
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="accessories-tab" data-bs-toggle="tab"
                                        data-bs-target="#accessories" type="button" role="tab"
                                        aria-controls="accessories" aria-selected="false">Accessories
                                </button>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane active" id="all-products" role="tabpanel" aria-labelledby="all-tab">

                                <div class="collection-list mt-4 row gx-0 gy-3">
                                    <jstlC:forEach items="${allProducts}" var="product">

                                        <div class="modal fade" id="all${product.id}" tabindex="-1"
                                             aria-labelledby="product-details-all" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-xl modal-l modal-md">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="product-details-all"></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-md-6 image-container">
                                                                    <jstlC:choose>
                                                                        <jstlC:when
                                                                                test="${product.productImage != '' && product.productThumbnail != ''}">
                                                                            <div class="big-image">
                                                                                <img src="${product.productImage}"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                            <div class="small-image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                        </jstlC:when>
                                                                        <jstlC:otherwise>
                                                                            <div class="big-image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                            <div class="small-image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                        </jstlC:otherwise>
                                                                    </jstlC:choose>
                                                                </div>
                                                                <div class="col-md-6 ms-auto description-container">
                                                                    <h1 class="product-name">${product.productName}</h1>
                                                                    <br><br>
                                                                    <p class="text-container">${product.productDescription}</p>
                                                                    <br><br>
                                                                    <div class="product-price descrip-quantity fw-bold">
                                                                        <span>$ ${product.productPrice} </span>
                                                                        <div class="counter">
                                                                            <span class="down"
                                                                                  onClick="decreaseCount(event, this)">
                                                                                <i class="fa-solid fa-circle-minus"></i></span>
                                                                            <input type="text" id="prod-quant"
                                                                                   name="quantity" value="1">
                                                                            <span class="up"
                                                                                  onClick="increaseCount(event, this)">
                                                                                <i class="fa-solid fa-circle-plus"></i></span>
                                                                        </div>
                                                                    </div>
                                                                    <br><br>
                                                                    <div class="add-to-basket">
                                                                        <a href="/cart/addItem/${product.id}"
                                                                           class="btn bottom-0 end-0"
                                                                           id="cart-add"><span> Add to Basket</span><i
                                                                                class="fa-solid fa-basket-shopping"></i></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-lg-4 col-xl-3 p-2 all">
                                            <div class="collection-img position-relative">
                                                <button type="button" data-bs-toggle="modal"
                                                        data-bs-target="#all${product.id}">
                                                    <jstlC:choose>
                                                        <jstlC:when
                                                                test="${product.productImage != '' && product.productThumbnail != ''}">
                                                            <img src="${product.productImage}" class="w-100"
                                                                 alt="image">
                                                            <img src="${product.productThumbnail}"
                                                                 class="secondary-img w-100" alt="image">
                                                        </jstlC:when>
                                                        <jstlC:otherwise>
                                                            <img src="../../../pub/img/placeholder.png" class="w-100"
                                                                 alt="image">
                                                            <img src="../../../pub/img/placeholder.png"
                                                                 class="secondary-img w-100" alt="image">
                                                        </jstlC:otherwise>
                                                    </jstlC:choose>
                                                </button>
                                            </div>
                                            <div class="text-center">
                                                <p class="fw-bold product-name">${product.productName}</p>
                                                <span class="fw-bolder product-price">$ ${product.productPrice}</span>
                                            </div>
                                        </div>
                                    </jstlC:forEach>
                                </div>
                            </div>

                            <div class="tab-pane" id="soft" role="tabpanel" aria-labelledby="soft-tab">
                                <div class="collection-list mt-4 row gx-0 gy-3">

                                    <jstlC:forEach items="${softProducts}" var="product">
                                        <div class="modal fade" id="soft${product.id}" tabindex="-1"
                                             aria-labelledby="product-details-soft" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-xl modal-md">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="product-details-soft"></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-md-6 image-container">
                                                                    <jstlC:choose>
                                                                        <jstlC:when
                                                                                test="${product.productImage != '' && product.productThumbnail != ''}">
                                                                            <div class="big-image">
                                                                                <img src="${product.productImage}"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                            <div class="small-image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                        </jstlC:when>
                                                                        <jstlC:otherwise>
                                                                            <div class="big-image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                            <div class="small-image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                        </jstlC:otherwise>
                                                                    </jstlC:choose>
                                                                </div>
                                                                <div class="col-md-6 ms-auto description-container">
                                                                    <h1 class="product-name">${product.productName}</h1>
                                                                    <br><br>
                                                                    <p class="text-container">${product.productDescription}</p>
                                                                    <br><br>
                                                                    <div class="product-price descrip-quantity fw-bold">
                                                                        <span>$ ${product.productPrice} </span>
                                                                        <div class="counter">
                                                                            <span class="down"
                                                                                  onClick="decreaseCount(event, this)">
                                                                                <i class="fa-solid fa-circle-minus"></i></span>
                                                                            <input type="text" id="prod-quant"
                                                                                   name="quantity" value="1">
                                                                            <span class="up"
                                                                                  onClick="increaseCount(event, this)">
                                                                                <i class="fa-solid fa-circle-plus"></i></span>
                                                                        </div>
                                                                    </div>
                                                                    <br><br>
                                                                    <div class="add-to-basket">
                                                                        <a href="/cart/addItem/${product.id}"
                                                                           class="btn bottom-0 end-0"
                                                                           id="cart-add"><span> Add to Basket</span><i
                                                                                class="fa-solid fa-basket-shopping"></i></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3 p-2 all">
                                            <div class="collection-img position-relative">
                                                <button type="button" data-bs-toggle="modal"
                                                        data-bs-target="#soft${product.id}">
                                                    <jstlC:choose>
                                                        <jstlC:when
                                                                test="${product.productImage != '' && product.productThumbnail != ''}">
                                                            <img src="${product.productImage}" class="w-100"
                                                                 alt="image">
                                                            <img src="${product.productThumbnail}"
                                                                 class="secondary-img w-100" alt="image">
                                                        </jstlC:when>
                                                        <jstlC:otherwise>
                                                            <img src="../../../pub/img/placeholder.png" class="w-100"
                                                                 alt="image">
                                                            <img src="../../../pub/img/placeholder.png"
                                                                 class="secondary-img w-100" alt="image">
                                                        </jstlC:otherwise>
                                                    </jstlC:choose>
                                                </button>
                                            </div>
                                            <div class="text-center">
                                                <p class="fw-bold product-name">${product.productName}</p>
                                                <span class="fw-bolder product-price">$ ${product.productPrice}</span>
                                            </div>
                                        </div>
                                    </jstlC:forEach>
                                </div>
                            </div>

                            <div class="tab-pane" id="hardy" role="tabpanel" aria-labelledby="hardy-tab">
                                <div class="collection-list mt-4 row gx-0 gy-3">

                                    <jstlC:forEach items="${hardyProducts}" var="product">
                                        <div class="modal fade" id="hardy${product.id}" tabindex="-1"
                                             aria-labelledby="product-details-hardy" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-xl modal-md">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="product-details-hardy"></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-md-6 image-container">
                                                                    <jstlC:choose>
                                                                        <jstlC:when
                                                                                test="${product.productImage != '' && product.productThumbnail != ''}">
                                                                            <div class="big-image">
                                                                                <img src="${product.productImage}"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                            <div class="small-image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                        </jstlC:when>
                                                                        <jstlC:otherwise>
                                                                            <div class="big-image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                            <div class="small-image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                        </jstlC:otherwise>
                                                                    </jstlC:choose>
                                                                </div>
                                                                <div class="col-md-6 ms-auto description-container">
                                                                    <h1 class="product-name">${product.productName}</h1>
                                                                    <br><br>
                                                                    <p class="text-container">${product.productDescription}</p>
                                                                    <br><br>
                                                                    <div class="product-price descrip-quantity fw-bold">
                                                                        <span>$ ${product.productPrice} </span>
                                                                        <div class="counter">
                                                                            <span class="down"
                                                                                  onClick="decreaseCount(event, this)">
                                                                                <i class="fa-solid fa-circle-minus"></i></span>
                                                                            <input type="text" id="prod-quant"
                                                                                   name="quantity" value="1">
                                                                            <span class="up"
                                                                                  onClick="increaseCount(event, this)">
                                                                                <i class="fa-solid fa-circle-plus"></i></span>
                                                                        </div>
                                                                    </div>
                                                                    <br><br>
                                                                    <div class="add-to-basket">
                                                                        <a href="/cart/addItem/${product.id}"
                                                                           class="btn bottom-0 end-0"
                                                                           id="cart-add"><span> Add to Basket</span><i
                                                                                class="fa-solid fa-basket-shopping"></i></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3 p-2 all">
                                            <div class="collection-img position-relative">
                                                <button type="button" data-bs-toggle="modal"
                                                        data-bs-target="#hardy${product.id}">
                                                    <jstlC:choose>
                                                        <jstlC:when
                                                                test="${product.productImage != '' && product.productThumbnail != ''}">
                                                            <img src="${product.productImage}" class="w-100"
                                                                 alt="image">
                                                            <img src="${product.productThumbnail}"
                                                                 class="secondary-img w-100" alt="image">
                                                        </jstlC:when>
                                                        <jstlC:otherwise>
                                                            <img src="../../../pub/img/placeholder.png" class="w-100"
                                                                 alt="image">
                                                            <img src="../../../pub/img/placeholder.png"
                                                                 class="secondary-img w-100" alt="image">
                                                        </jstlC:otherwise>
                                                    </jstlC:choose>
                                                </button>
                                            </div>
                                            <div class="text-center">
                                                <p class="fw-bold product-name">${product.productName}</p>
                                                <span class="fw-bolder product-price">$ ${product.productPrice}</span>
                                            </div>
                                        </div>
                                    </jstlC:forEach>
                                </div>
                            </div>

                            <div class="tab-pane" id="accessories" role="tabpanel" aria-labelledby="accessories-tab">
                                <div class="collection-list mt-4 row gx-0 gy-3">

                                    <jstlC:forEach items="${accessoriesProducts}" var="product">
                                        <%--  beginning form--%>
                                        <div class="modal fade" id="accessories${product.id}" tabindex="-1"
                                             aria-labelledby="product-details-acc" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-xl modal-md">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="product-details-acc"></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-md-6 image-container">
                                                                    <jstlC:choose>
                                                                        <jstlC:when
                                                                                test="${product.productImage != '' && product.productThumbnail != ''}">
                                                                            <div class="big-image">
                                                                                <img src="${product.productImage}"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                            <div class="small-image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                                <img src="${product.productThumbnail}"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                        </jstlC:when>
                                                                        <jstlC:otherwise>
                                                                            <div class="big-image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                            <div class="small-image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                                <img src="../../../pub/img/placeholder.png"
                                                                                     class="w-100" alt="image">
                                                                            </div>
                                                                        </jstlC:otherwise>
                                                                    </jstlC:choose>
                                                                </div>
                                                                <div class="col-md-6 ms-auto description-container">
                                                                    <h1 class="product-name">${product.productName}</h1>
                                                                    <br><br>
                                                                    <p class="text-container">${product.productDescription}</p>
                                                                    <br><br>
                                                                    <div class="product-price descrip-quantity fw-bold">
                                                                        <span>$ ${product.productPrice} </span>
                                                                        <div class="counter">
                                                                            <span class="down"
                                                                                  onClick="decreaseCount(event, this)">
                                                                                <i class="fa-solid fa-circle-minus"></i></span>
                                                                            <input type="text" id="prod-quant"
                                                                                   name="quantity" value="1">
                                                                            <span class="up"
                                                                                  onClick="increaseCount(event, this)">
                                                                                <i class="fa-solid fa-circle-plus"></i></span>
                                                                        </div>
                                                                    </div>
                                                                    <br><br>
                                                                    <div class="add-to-basket">
                                                                        <a href="/cart/addItem/${product.id}"
                                                                           class="btn bottom-0 end-0"
                                                                           id="cart-add"><span> Add to Basket</span><i
                                                                                class="fa-solid fa-basket-shopping"></i></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-lg-4 col-xl-3 p-2 all">
                                            <div class="collection-img position-relative">
                                                <button type="button" data-bs-toggle="modal"
                                                        data-bs-target="#accessories${product.id}">
                                                    <jstlC:choose>
                                                        <jstlC:when
                                                                test="${product.productImage != '' && product.productThumbnail != ''}">
                                                            <img src="${product.productImage}" class="w-100"
                                                                 alt="image">
                                                            <img src="${product.productThumbnail}"
                                                                 class="secondary-img w-100" alt="image">
                                                        </jstlC:when>
                                                        <jstlC:otherwise>
                                                            <img src="../../../pub/img/placeholder.png" class="w-100"
                                                                 alt="image">
                                                            <img src="../../../pub/img/placeholder.png"
                                                                 class="secondary-img w-100" alt="image">
                                                        </jstlC:otherwise>
                                                    </jstlC:choose>
                                                </button>
                                            </div>
                                            <div class="text-center">
                                                <p class="fw-bold product-name">${product.productName}</p>
                                                <span class="fw-bolder product-price">$ ${product.productPrice}</span>
                                            </div>
                                        </div>
                                    </jstlC:forEach>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="links">
        <a href="/home">home</a>
        <a href="/shop/products">shop</a>
        <a href="/home#about">about</a>
        <a href="/home#contact">contact</a>
        <a href="#">Login</a>
    </div>
    <div class="credit">created by <span>jessica fatim</span> | all rights reserved</div>
</footer>

<script type="text/javascript" src="../../../pub/js/script.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
