<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarDash.css"/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value="../pub/css/account.css"/>" rel="stylesheet" type="text/css"/>

<title>Pawt&iuml;te Plant Co | My Account</title>
</head>

<body>
<jsp:include page="../include/navbarUser.jsp"/>

<section class="section editform">
    <div class="row justify-content-end register-body ">
        <div class="col-10 col-sm-8 col-md-8 col-xl-6 mx-auto my-auto">
            <div class="card">
                <div class="card-body shadow-lg">
                    <h1 class="card-title">Registration Form</h1>


                    <form action="/user/account/edit" method="post" modelAttribute="registrationFormBean" id="editAccount">
                        <div class="row ">
                            <div class="col-8 col-sm-8 mx-auto my-auto">

                                <div class="mb-3">


                                    <input type="number" name="userID" id="userID" class="form-control" style="visibility:hidden;" value="${user.userID}"/>

                                    <label for="editFirstName" class="form-label">First Name</label>
                                    <input type="text" class="form-control form-control-lg" name="firstName" value= "${user.firstName}" id="editFirstName" pattern="^[a-zA-Z ]*$" required>
                                    <div class="invalid-feedback">
                                        Please enter a valid name without numbers or special characters
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="editLastName" class="form-label">Last Name</label>
                                    <input type="text" class="form-control form-control-lg" name="lastName" value= "${user.lastName}" id="editLastName" pattern="^[a-zA-Z ]*$" required>
                                    <div class="invalid-feedback">
                                        Please enter a valid name without numbers or special characters
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="editEmail" class="form-label">Email address</label>
                                    <input type="email" class="form-control form-control-lg" name="email" value= "${user.email}" id="editEmail" required>
                                    <div class= "invalid-feedback">Please provide a valid email
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="editNumber" class="form-label">Phone Number</label>
                                    <input type="tel" class="form-control form-control-lg" name="phone" value= "${user.phone}"  id="editNumber"
                                           pattern= "[0-9]{3}-[0-9]{3}-[0-9]{4}" required>
                                    <div class= "invalid-feedback">Please provide a valid phone number.
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="editPassword" class="form-label">Password</label>
                                    <input type="password" class="form-control form-control-lg" name="password" value= "${user.password}" id="editPassword"
                                           pattern="^\S{6,}$"
                                           onchange= "this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : ''); if(this.checkValidity()) form.ConfirmPassword.pattern = this.value;"
                                           required>
                                    <div class= "invalid-feedback">Must contain at least 6 characters
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="editConfirmPassword" class="form-label"> Confirm Password</label>
                                    <input type="password" class="form-control form-control-lg" name="confirmPassword" value= "${user.confirmPassword}" id="editConfirmPassword"
                                           pattern="^\S{6,}$"
                                           onchange= "this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : '');"
                                           required>
                                    <div class= "invalid-feedback" >Passwords don't match.
                                    </div>
                                </div>

                                <center><button type="submit" class="btn">Submit
                                </button></center>

                            </div>
                        </div>
                    </form>


                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>