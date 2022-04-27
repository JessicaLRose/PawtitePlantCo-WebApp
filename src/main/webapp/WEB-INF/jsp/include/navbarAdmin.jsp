<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="header" id="navigation">

    <nav class="navbar fixed-top navbar-expand navbar-dark adminbar" id="admin-bar">
        <div class="container-fluid justify-content-center">
            <div class="column">
                <div class="d-flex justify-content-around"><img src="../../../pub/img/fakelogo.png" alt="" width="70"
                                                                height="70" class="toplogo"></div>
                <span class="navbar-brand d-flex justify-content-around">
              Admin Dashboard</span>
                <div class="position-absolute top-0 end-0">
                    <a href="/home" class="btn">Home</a>
                </div>
                <div class="position-absolute top-0 start-0">
                    <a href="/logout" class="btn" id="logout-admin">Logout</a>
                </div>
                <hr>
                <div class="navbar d-flex align-items-center" id="navbarNav">
                    <button class="navbar-toggler" type="button" data-bs-target="#dash-links" aria-controls="dash-links"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="navbar-nav" id="dash-links">
                        <a class="nav-link active" aria-current="page" href="/admin/productlisting">Product Listing</a>
                        <a class="nav-link" href="/admin/usersListing">Registered Users</a>
                        <a class="nav-link" href="/admin/ordersListing">Orders</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

</header>