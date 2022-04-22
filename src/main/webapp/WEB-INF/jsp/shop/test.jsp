<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <%--Bootstrap Stylesheet CDN--%>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
    />
    <%--External/Custom Stylesheet--%>
    <link href="<c:url value="/pub/css/style.css"/>" rel="stylesheet" type="text/css"/>
    <%--Bootstrap JS CDN--%>
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
    ></script>
    <%--Font Awesome Kit CDN--%>
    <script
            src="https://kit.fontawesome.com/ae53138fc4.js"
            crossorigin="anonymous"
    ></script>
    <%--jQuery CDN--%>
    <script
            src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous"
    ></script>
    <%--External js file, commented out for usercontroller method-testing--%>
<%--    <script src="<c:url value="/pub/script/register.js"/>" defer></script>--%>
    <%--Internal stylesheet for hero-image on landing page--%>
    <style>
        .hero-image {
            background-image: linear-gradient(
                    rgba(0, 0, 0, 0.5),
                    rgba(0, 0, 0, 0.5)
            ),
            url("/pub/images/karim-ben-van-mKk2nnZ1EQk-unsplash.jpg");
            height: 50%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }
        .hero-text {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }
        .hero-text button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 10px 25px;
            color: black;
            background-color: #ddd;
            text-align: center;
            cursor: pointer;
        }
        .hero-text button:hover {
            background-color: #555;
            color: white;
        }

        @import url('https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700&family=Oxygen:wght@300;400;700&display=swap');

        :root{
            --main-color: #F46D25;
            --dark-grey: #4b4b55;
            --transparent-grey:#4b4b55d3;
            --med-turquoise: #53DCDC;
            --pearl: #f5f5f5;
            --transparent-pearl: #f5f5f5e3;
            --light-orange: #f9944f;
            --error: #C83E4d;

        }

        html, body{
            padding: 0;
            margin: 0;
            height:100%;
            font-family: 'Lato', sans-serif;
            color:var(--dark-grey);
            background-color:var(--pearl);
        }

        a,
        a:focus,
        a:active {
            text-decoration: none;
            color: inherit !important;
        }

        a:hover {
            color: #f46d25 !important;
        }

        .nav-style {
            /* background: linear-gradient(#4b4b55,turquoise); */
            background: #53dcdc;

            color: #f5f5f5;
        }
        .fa-bars{
            color:var(--pearl);
        }

        .bg{
            background-image: url("../images/karim-ben-van-mKk2nnZ1EQk-unsplash.jpg");
            height:100%;
            background-color:var(--pearl);
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            overflow: auto;
        }

        #bg-msg{
            background-color:var(--pearl);
            background-image: linear-gradient(
                    rgba(245, 245, 245, .75),
                    rgba(245, 245, 245, .75)
            ),
            url("karim-ben-van-mKk2nnZ1EQk-unsplash.jpg");
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            padding-top:2.5rem;
        }

        #bg-msg-header{
            background-color:var(--dark-grey);
            color:var(--pearl);
        }

        .landing-card{
            border-radius: 10px;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
        }

        .card-container{
            padding-top: 10%;
        }

        #regForm{
            border-radius: 20px;

        }

        #regCard{
            background-color:var(--transparent-grey);
            color:var(--pearl);
            border: 20%;
            border-radius:20px;
        }

        table, #tbl-background{
            background-color:var(--transparent-pearl);
            color:var(--dark-grey);
            border-radius: 1%;

        }

        .btn{
            background-color:var(--main-color);
            color:var(--pearl);
        }

        .inputError{
            border: 3px solid var(--med-turquoise);
        }

        .errorText{
            font-size: smaller;
            font-style: italic;
            color:var(--med-turquoise);
        }

        .reveal-if-active {
            opacity: 0;
            max-height: 0;
            overflow: hidden;
            transform: scale(0.8);
            transition: 0.5s;
        }

        /* chat page start */
        #chat-header{
            background-color:var(--dark-grey);
            color:var(--pearl);
        }
        #list-header{
            text-align: center;
        }
        .chat-page{
            padding: 0 !important;
        }

        #pic{
            height: auto;
            width: 5rem;
        }
    </style>
</head>
<body>
<!-- navbar -->
<section id="header">
    <!-- removed navbar-light and bg-light fixed-top -->
    <nav class="navbar navbar-expand-lg fixed-top nav-style">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><!--img--></a>
            <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
                <span><i class="fas fa-solid fa-bars"></i></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav mx-auto">

                    <sec:authorize access="!isAuthenticated()">
                        <a class="nav-link active" aria-current="page" href="/index">Home</a>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <a class="nav-link active" aria-current="page" href="/home">Home</a>
                    </sec:authorize>

                    <a class="nav-link" href="/ourProviders">Providers</a>

                    <sec:authorize access="isAuthenticated()">
                        <a class="nav-link" href="/user/message">Message</a>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <a class="nav-link" href="/user/conversation">My Case</a>
                    </sec:authorize>
                    <sec:authorize access="!isAuthenticated()">
                        <a class="nav-link" href="/user/register">Create Account</a>
                    </sec:authorize>
                    <sec:authorize access="!isAuthenticated()">
                        <a class="nav-link" href="/login/login">Log In</a>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <a class="nav-link" href="/login/logout">Logout</a>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ADMIN')">
                        <a class="nav-link" href="/upload">Upload</a>
                    </sec:authorize>
                </div>
            </div>
        </div>
    </nav>
</section>
<!-- end navbar -->

<main class="row" id="bg-msg">
    <section class="col-3 my-3">
        <h4>Participants</h4>
        <section class="card mb-3" style="max-width: 540px;">
            <c:forEach var="user" items="${users}">
            <div class="row g-0">
                <div class="col-md-4">
                    <c:choose>
                        <c:when test="${user.imgUrl != null}">
                            <img src="${user.imgUrl}" class="ms-4 mt-4" style="border-radius: 50%" alt="${user.firstName} ${user.lastName}">
                        </c:when>
                        <c:otherwise>
                            <%--                            <div> Icons made by <a href="https://www.flaticon.com/authors/phoenix-group" title="Phoenix Group"> Phoenix Group </a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com'</a></div>--%>
                            <img src="/pub/images/userIcon.png" class="ms-4 mt-4" alt="${user.firstName} ${user.lastName}">
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">${user.firstName} ${user.lastName}</h5>
                        <p class="card-text">${user.specialty}</p>
                        <p class="card-text"><small class="text-muted">${user.credential}</small></p>
                    </div>
                </div>
                </c:forEach>
            </div>
        </section>
        <%--    will put participant info in this section--%>
        <div class="col-9 my-3">
            <div class="row">
                <div class="col-12">
                    <header class="p-2 text-light text-center" id="bg-msg-header"><h1>${conversation.subject}</h1></header>
                    <%--        add text box for main chat field--%>
                    <%--        add text-box for input field w/button for submitting--%>
                    <ul id="messages">
                        <%--            may style this w/css and add each message as an li w/no bullet?--%>
                        <c:forEach var="message" items="${messages}">
                            <li>${message.message}</li>
                        </c:forEach>
                    </ul>
                    <form id="form" var="conversation" action="/user/message/${conversation.id}" method="post">
                        <input type="hidden" name="convId" value=${conversation.id}>
                        <textarea id="message" class="form-control" data-convId=${conversation.id} autocomplete="on" name="message"></textarea>
                        <button type="submit" class="btn" id="sButton button-addon2">Send</button>
                    </form>

                </div>
            </div>
        </div>

</main>
</body>

</html>