<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<jsp:include page="include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarMain.css"/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value="../pub/css/registration.css"/>" rel="stylesheet" type="text/css"/>
<title>Pawt&iuml;te Plant Co | Registration</title>
</head>

<body>

<jsp:include page="include/navbarMain.jsp"/>

<section class="section registrationform">
    <div class="row justify-content-end register-body ">
        <div class="col-10 col-sm-8 col-md-8 col-xl-6 mx-auto my-auto">
            <div class="card">
                <div class="card-body shadow-lg">
                    <h1 class="card-title">Registration Form</h1>
                    <form class="needs-validation" action="/registerSubmit" method="POST" novalidate>
                        <div class="row ">
                            <div class="col-8 col-sm-8 mx-auto my-auto">

                                <div class="mb-3">
                                    <label for="InputFirstName" class="form-label">First Name</label>
                                    <input type="text" class="form-control form-control-lg" name="firstName"
                                           placeholder="First Name" id="InputFirstName" pattern="^[a-zA-Z ]*$" required>
                                    <div class="invalid-feedback">
                                        Please enter a valid name without numbers or special characters
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="InputLastName" class="form-label">Last Name</label>
                                    <input type="text" class="form-control form-control-lg" name="lastName"
                                           placeholder="Last Name" id="InputLastName" pattern="^[a-zA-Z ]*$" required>
                                    <div class="invalid-feedback">
                                        Please enter a valid name without numbers or special characters
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="InputEmail" class="form-label">Email address</label>
                                    <input type="email" class="form-control form-control-lg" name="email"
                                           placeholder="Email*" id="InputEmail" required>
                                    <div class="invalid-feedback">Please provide a valid email
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="InputNumber" class="form-label">Phone Number</label>
                                    <input type="tel" class="form-control form-control-lg" name="phone"
                                           placeholder="123-456-7890" id="InputNumber"
                                           pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required>
                                    <div class="invalid-feedback">Please provide a valid phone number.
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="InputPassword" class="form-label">Password</label>
                                    <input type="password" class="form-control form-control-lg" name="password"
                                           placeholder="Password*" id="InputPassword"
                                           pattern="^\S{6,}$"
                                           onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : ''); if(this.checkValidity()) form.ConfirmPassword.pattern = this.value;"
                                           required>
                                    <div class="invalid-feedback">Must contain at least 6 characters
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="ConfirmPassword" class="form-label"> Confirm Password</label>
                                    <input type="password" class="form-control form-control-lg" name="confirmPassword"
                                           placeholder="Confirm Password*" id="ConfirmPassword"
                                           pattern="^\S{6,}$"
                                           onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : '');"
                                           required>
                                    <div class="invalid-feedback">Passwords don't match.
                                    </div>
                                </div>

                                <center>
                                    <button type="submit" class="btn">Submit
                                    </button>
                                </center>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="include/footer.jsp"/>
