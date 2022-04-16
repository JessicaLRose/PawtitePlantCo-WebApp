<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarMain.css"/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value="../pub/css/checkout.css"/>" rel="stylesheet" type="text/css"/>
<title>Pawt&iuml;te Plant Co | Checkout</title>
</head>

<body>

<jsp:include page="../include/navbarMain.jsp"/>

<div class="checkout-page">

    <h1 class="cart-heading">
        <i class="fa-solid fa-basket-shopping"></i> My Basket
    </h1>

    <section class="cart-section">

        <h2 class="section-heading">Order Summary</h2>
        <div class="cart-item-box">
            <div class="product-card">
                <div class="card">
                    <div class="img-box">
                        <img src="../../../pub/img/cart-plant-5.png" alt="plant 5" class="product-img">
                    </div>
                    <div class="detail">
                        <h3 class="product-name">Plant 1Plant 1Plant 1Plant 1Plant 1</h3>
                        <div class="wrapper">
                            <div class="product-qty">

                                <div class="counter">
                                    <span class="down" onClick='decreaseCount(event, this)'><i class="fa-solid fa-circle-minus"></i></span>
                                    <input type="text" value="1">
                                    <span class="up" onClick='increaseCount(event, this)'><i class="fa-solid fa-circle-plus"></i></span>
                                </div>
                            </div>
                            <div class="price">
                                $ <span id="price">1.25</span>
                            </div>
                        </div>
                    </div>

                    <span class="fas fa-times" id="remove-product"></span>

                </div>
            </div>

            <div class="product-card">
                <div class="card">
                    <div class="img-box">
                        <img src="../../../pub/img/cart-plant-6.png" alt="plant 6" class="product-img">
                    </div>
                    <div class="detail">
                        <h3 class="product-name">Plant 1Plant 1Plant 1Plant 1Plant 1</h3>
                        <div class="wrapper">
                            <div class="product-qty">

                                <div class="counter">
                                    <span class="down" onClick='decreaseCount(event, this)'><i class="fa-solid fa-circle-minus"></i></span>
                                    <input type="text" value="1">
                                    <span class="up" onClick='increaseCount(event, this)'><i class="fa-solid fa-circle-plus"></i></span>
                                </div>
                            </div>
                            <div class="price">
                                $ <span id="price">1.25</span>
                            </div>
                        </div>
                    </div>

                    <span class="fas fa-times" id="remove-product"></span>

                </div>
            </div>

        </div>
    </section>

    <!-- cart end -->


    <div class="wrapper">

        <!-- discount -->

        <div class="discount-token">

            <label for="discount-token" class="label-default">Promo/Reward code</label>

            <div class="code-box">

                <input type="text" name="discount-token" id="discount-token" class="input-default">

                <button class="btn apply-btn">Apply</button>

            </div>

        </div>

        <!-- discount end -->
        <!-- total section -->

        <div class="amount">

            <div class="subtotal">
                <span>Subtotal</span> <span>$ <span id="subtotal">2.05</span></span>
            </div>

            <div class="tax">
                <span>Tax</span> <span>$ <span id="tax">0.10</span></span>
            </div>

            <div class="shipping">
                <span>Shipping</span> <span>$ <span id="shipping">0.00</span></span>
            </div>

            <div class="total fs-2 fw-bold">
                <span>Order Total</span> <span>$ <span id="total">2.15</span></span>
            </div>

        </div>

    </div>
    <!-- total end -->

    <!--checkout section-->

    <section class="checkout-section">

        <h2 class="section-heading">Payment Details</h2>

        <div class="payment-form">

            <div class="payment-method">

                <button class="method selected">
                    <i class="fa-solid fa-credit-card" name="card"></i>
                    <span>Credit Card</span>
                    <ion-icon class="checkmark fill" name="checkmark-circle"></ion-icon>
                    <i class="fa-solid fa-circle-check checkmark fill" name="checkmark-circle"></i>
                </button>

                <button class="method">
                    <i class="fa-brands fa-paypal" name="logo-paypal"></i>
                    <span>PayPal</span>
                    <i class="fa-regular fa-circle-check checkmark" name="checkmark-circle-outline"></i>
                </button>

                <button class="method">
                    <i class="fa-brands fa-apple-pay" name="logo-apple"></i>
                    <span>Apple Pay</span>
                    <i class="fa-regular fa-circle-check checkmark" name="checkmark-circle-outline"></i>
                </button>

                <button class="method">
                    <i class="fa-brands fa-google-pay" name="logo-google"></i>
                    <span>Google Pay</span>
                    <i class="fa-regular fa-circle-check checkmark" name="checkmark-circle-outline"></i>
                </button>

            </div>

            <form action="#">

                <div class="cardholder-name">
                    <label for="cardholder-name" class="label-default">Cardholder name</label>
                    <input type="text" name="cardholder-name" id="cardholder-name" class="input-default">
                </div>

                <div class="card-number">
                    <label for="card-number" class="label-default">Card number</label>
                    <input type="text" name="card-number" id="card-number" class="input-default">
                </div>

                <div class="input-flex">

                    <div class="expire-date">
                        <label for="expire-date" class="label-default">Expiration date</label>

                        <div class="input-flex">

                            <input type="text" name="day" id="expire-date" placeholder="31" min="1" max="31"
                                   class="input-default">
                            /
                            <input type="text" name="month" id="expire-date" placeholder="12" min="1" max="12"
                                   class="input-default">

                        </div>
                    </div>

                    <div class="cvv">
                        <label for="cvv" class="label-default">CVV</label>
                        <input type="text" name="cvv" id="cvv" class="input-default">
                    </div>

                </div>

            </form>

        </div>

        <button class="btn">
            <b>Place your Order</b>
        </button>


    </section>

</div>

<jsp:include page="../include/footer.jsp" />
