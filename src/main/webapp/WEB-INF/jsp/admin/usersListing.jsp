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
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h3>Registered <b>Users</b></h3>
                </div>
                <div class="col-sm-6">
                    <div class="search-box">
                        <div class="input-group">
                            <input type="text" id="list-search" class="form-control" placeholder="search here...">
                            <span class="input-group-icon"><i class="fas fa-search"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <table class="table align-middle table-striped">
            <thead>
            <tr>
                <th>ID#</th>
                <th>Image</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>im a pic</td>
                <td>im a plant</td>
                <td>hardy</td>
                <td>$9.99</td>
                <td>10</td>
                <td>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-pen-to-square"></i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-circle-minus"></i></a>
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>im a pic</td>
                <td>im a plant</td>
                <td>hardy</td>
                <td>$9.99</td>
                <td>10</td>
                <td>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-pen-to-square"></i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-circle-minus"></i></a>
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>im a pic</td>
                <td>im a plant</td>
                <td>hardy</td>
                <td>$9.99</td>
                <td>10</td>
                <td>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-pen-to-square"></i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-circle-minus"></i></a>
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>im a pic</td>
                <td>im a plant</td>
                <td>hardy</td>
                <td>$9.99</td>
                <td>10</td>
                <td>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-pen-to-square"></i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-circle-minus"></i></a>
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>im a pic</td>
                <td>im a plant</td>
                <td>hardy</td>
                <td>$9.99</td>
                <td>10</td>
                <td>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-pen-to-square"></i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip" data-placement="bottom"><i class="fa-solid fa-circle-minus"></i></a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

</section>

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>