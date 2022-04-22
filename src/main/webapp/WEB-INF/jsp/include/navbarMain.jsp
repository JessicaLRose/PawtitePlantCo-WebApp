<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header class="header">

    <a href="/home" class="logo">
        <div class="brand">
            <img src="../pub/img/fakelogo.png" alt="">
            <span>Pawt&iuml;te Plant Co</span>
        </div>
    </a>

    <nav class="navbar">

        <div class="d-block">
            <div class="d-block">
                <a id="loginLink">login</a>
                <a href="/home">home</a>
                <a href="/shop/products">shop</a>
                <a href="/home#about">about</a>
                <a href="/home#contact">contact</a>
                <a href="/shop/checkout">cart</a>
            </div>
        </div>

    </nav>

    <div class="icons">
        <div class="fas fa-search" id="search-btn"></div>
        <div class="fa-solid fa-user" id="login-btn"></div>
        <div class="fa-solid fa-basket-shopping" id="cart-btn"></div>
        <div class="fas fa-bars" id="menu-btn"></div>

    </div>

    <!-- search bar -->

    <div class="search-bar-container">
        <input type="search" id="search-bar" placeholder="search here...">
        <label for="search-bar" class="fas fa-search"></label>
    </div>

    <!--cart window starts-->

    <div class="cart-items-container">

        <h3>basket</h3>
        <hr>
        <sec:authorize access="!isAuthenticated()">
        <h5>Log in to see items you may have added previously</h5>
        <div class="d-flex flex-row basket-buttons">
            <a href="#" class="btn" id="cart-loginLink">Login</a>
            <a href="/register" class="btn">Create Account</a>
        </div>
        </sec:authorize>

        <sec:authorize access="isAuthenticated()">
                <div class="cart-item">
                    <span class="fas fa-times"></span>
                    <img src="../pub/img/cart-plant-7.png" alt="">

                    <div class="content">
                        <h3>cart item 01</h3>
                        <div class="price">$15.99/-</div>
                    </div>
                </div>
                <div class="cart-item">
                    <span class="fas fa-times"></span>
                    <img src="../pub/img/cart-plant-8.png" alt="">

                    <div class="content">
                        <h3>cart item 02</h3>
                        <div class="price">$15.99/-</div>
                    </div>
                </div>
                <div class="cart-item">
                    <span class="fas fa-times"></span>
                    <img src="../pub/img/cart-plant-9.png" alt="">

                    <div class="content">
                        <h3>cart item 03</h3>
                        <div class="price">$15.99/-</div>
                    </div>
                </div>
                <div class="cart-item">
                    <span class="fas fa-times"></span>
                    <img src="../pub/img/cart-plant-3.png" alt="">

                    <div class="content">
                        <h3>cart item 04</h3>
                        <div class="price">$15.99/-</div>
                    </div>
                </div>
                <a href="#" class="btn">checkout now</a>
            </sec:authorize>
    </div>

</header>

<!--login form starts-->

<div class="login-form-container">

    <div class="fas fa-times" id="form-close"></div>

    <!-- login default -->
    <sec:authorize access="!isAuthenticated()">
        <form class="login-window" action="/login/loginSubmit" method="POST">
            <h3>Login</h3>
            <input type="text" class="box" name="username" placeholder="enter your email">
            <input type="password" class="box" name="password" placeholder="enter your password">
            <input type="submit" value="login now" class="btn" id="login-profile">
            <input type="checkbox" id="remember">
            <label for="remember">remember me</label>
            <p>forget password? <a href="#" class="login-extras">click here</a></p>
            <p>don't have an account? <a href="/register" class="login-extras">register now</a></p>

        </form>
    </sec:authorize>

    <!-- logged-in user -->
    <sec:authorize access="isAuthenticated() && !hasAuthority('ADMIN')">
        <form class="logged-in" action="login/loginSubmit" method="POST">

            <center><i class="fa-solid fa-circle-user"></i></center>
            <h3>Welcome<br><span><jstlC:out value="${user.getFirstName()}" /></span></h3>

            <a href="/user/account/${user.getId()}" class="btn" id="account-btn">My Account</a>
            <a href="/logout" class="btn" id="logout-profile">Logout</a>
            <br>

        </form>
    </sec:authorize>

    <sec:authorize access="hasAuthority('ADMIN')" >
        <form class="adminlogged-in" action="login/loginSubmit" method="POST">

            <center><i class="fa-solid fa-circle-user"></i></center>
            <h3>Welcome<br><span><jstlC:out value="${user.getFirstName()}" /></span></h3>

            <a href="/admin/productlisting" class="btn" id="admin-btn">Less gooooo</a>
            <a href="/logout" class="btn" id="logout-admin">Logout</a>

            <br>
        </form>
    </sec:authorize>

</div>