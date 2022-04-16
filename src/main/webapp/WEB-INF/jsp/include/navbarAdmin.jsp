<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="header">

    <nav class="navbar fixed-top navbar-expand navbar-dark adminbar" id="admin-bar">
        <div class="container-fluid justify-content-center">
            <div class="column">

                <div class= "d-flex justify-content-around"><img src="../../../pub/img/fakelogo.png" alt="" width="70" height="70" class="toplogo"></div>

                <span class="navbar-brand d-flex justify-content-around">
              Admin Dashboard</span>

                <div class="position-absolute top-0 end-0">
                    <a href="/logout" class="btn" id="logout-admin">Logout</a>
                </div>

                <hr>

                <div class="navbar-nav d-flex align-items-center" id="navbarNav">
                    <div class="navbar-nav ">
                        <a class="nav-link active pagelink" aria-current="page" href="/admin/productlisting">Product Listing</a>
                        <a class="nav-link" href="/admin/registeredUsers">Registered Users</a>
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Orders</a>
                    </div>
                </div>
            </div>
    </nav>

</header>