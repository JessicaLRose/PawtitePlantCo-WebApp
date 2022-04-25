<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarDash.css"/>" rel="stylesheet" type="text/css"/>

<title>Pawt&iuml;te Plant Co | Admin Dashboard</title>
</head>

<body>
<jsp:include page="../include/navbarAdmin.jsp"/>


<section class="admin-listing d-flex justify-content-center">

    <div class=" table-responsive table-wrapper shadow">
        <div class="table-title ">
            <div class="row d-flex ">
                <div class="col-sm-6">
                    <h3>All <b>Orders</b></h3>
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
                <th>Order ID #</th>
                <th>Customer Name</th>
                <th>Cart Status</th>
                <th>Payment Method</th>
                <th>Order Date</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <jstlC:forEach items = "${allOrders}" var = "order">
                <tr>

                    <td>${order.id}</td>
                    <td>${order.cardholderName}</td>
                    <td>${order.cartStatus}</td>
                    <td>${order.paymentMethod}</td>
                    <td>${order.orderDate}</td>
                    <td>
                        <a href="#" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-pen-to-square"></i></a>

                        <a href="#" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-circle-minus"></i></a>

                    </td>
                </tr>
            </jstlC:forEach>

            </tbody>
        </table>
    </div>

</section>
<script type="text/javascript" src="../../../pub/js/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>