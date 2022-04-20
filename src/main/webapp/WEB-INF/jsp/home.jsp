<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarMain.css"/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value="../pub/css/index.css"/>" rel="stylesheet" type="text/css"/>

<title>Pawt&iuml;te Plant Co | Home</title>
</head>

<body>
<jsp:include page="./include/navbarMain.jsp" />

<!-- carousel section starts -->

<section class="home" id="home">
    <section id="carouselHero" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselHero" data-bs-slide-to="0" class="active" aria-current="true"
                    aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselHero" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselHero" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../../pub/img/dogsucculent.jpg" class="d-block w-100" alt="chihuahuaplants">
                <div class="carousel-caption">
                    <h1>Pet-friendly succulents!</h1>
                    <p>I'm baby chartreuse seitan schlitz woke affogato shabby chic vaporwave of succulents.</p>
                    <a href="/shop/products" class="btn">Shop Succulents</a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../../pub/img/bluesucculents.jpg" class="d-block w-100" alt="bluesucculents">
                <div class="carousel-caption">
                    <h1> Everything you need</h1>
                    <p>Pok pok distillery small batch kitsch cray banh mi vice fingerstache occupy narwhal.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../../pub/img/succulenttrio.jpg" class="d-block w-100" alt="succulenttrio">
                <div class="carousel-caption">
                    <h1>make an arrangement</h1>
                    <p>Knausgaard tofu VHS, organic trust fund lo-fi bushwick neutra. Raw denim man braid pop-up vice,
                        celiac ramps tote bag banjo.</p>

                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselHero" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselHero" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>
</section>

<!-- info bar starts -->
<section class="icons-container">

    <div class="icons">
        <img src="../../pub/img/delivery.png" alt="">
        <div class="info">
            <h3>fast and safe delivery</h3>
            <span>orders handled with love</span>
        </div>
    </div>

    <div class="icons">
        <img src="../../pub/img/cat.png" alt="">
        <div class="info">
            <h3>guaranteed pet-safe</h3>
            <span>for your furry friends</span>
        </div>
    </div>

    <div class="icons">
        <img src="../../pub/img/secure.png" alt="">
        <div class="info">
            <h3>secure payments</h3>
            <span>with spring security</span>
        </div>
    </div>

    <div class="icons">
        <img src="../../pub/img/plant.png" alt="">
        <div class="info">
            <h3>fresh plants everytime</h3>
            <span>no root rot upon arrival</span>
        </div>
    </div>

</section>
<!-- featured product section starts -->

<section class="featured" id="featured">

    <h1 class="heading"> featured <span>succulents</span></h1>

    <div class="box-container">

        <div class="box">

            <img src="../../pub/img/cart-plant-1.png" alt="">
            <h3>Sempervivum Red Lion</h3>
            <div class="price">$7.99 <span>9.99</span></div>
            <form action="/products/addToCart" method="POST">
                <input type="hidden" value="${user.getId()}" name="id" />
                <input type="hidden" value="${product.getId()}" />
                <input type="submit" value="Add to Cart" class="btn">
            </form>
        </div>

        <div class="box">
            <img src="../../pub/img/cart-plant-2.png" alt="">
            <h3>sedum Donkey's Tail</h3>
            <div class="price">$15.99 <span>20.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="../../pub/img/cart-plant-3.png" alt="">
            <h3>Echeveria Violet Queen</h3>
            <div class="price">$15.99 <span>20.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="../../pub/img/cart-plant-4.png" alt="">
            <h3>Sedum Major</h3>
            <div class="price">$15.99 <span>20.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="../../pub/img/cart-plant-5.png" alt="">
            <h3>Haworthia Zebra</h3>
            <div class="price">$15.99 <span>20.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="../../pub/img/cart-plant-6.png" alt="">
            <h3>Echeveria Perle Von Nunberg</h3>
            <div class="price">$15.99 <span>20.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

    </div>

</section>

<!-- diy starts -->

<section class="diy" id="diy">

    <h1 class="heading shadow"><span>succulent</span> kits </h1>

    <div class="row">

        <div><br></div>

        <table class="table table-success table-striped shadow">
            <thead>
            <tr>
                <th scope="col"></th>
                <th scope="col">basic</th>
                <th scope="col">premium</th>
                <th scope="col">VIP</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">cost</th>
                <td>$5.99</td>
                <td>$7.99</td>
                <td>$9.99</td>
            </tr>
            <tr>
                <th scope="row">perks</th>
                <td>Random</td>
                <td>Coupon</td>
                <td>Freebies</td>
            </tr>
            <tr>
                <th scope="row">points</th>
                <td>500</td>
                <td>1000</td>
                <td>2000</td>
            </tr>
            </tbody>
        </table>


    </div>

</section>

<!-- about section starts -->

<section class="about" id="about">

    <h1 class="heading"><span>about</span> us </h1>

    <div class="row shadow">

        <div class="column image">
            <img src="../../pub/img/plant-stack.jpg" alt="holding-plants">

        </div>

        <div class="column content">
            <h3>Why choose us?</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus qui ea ullam, enim tempora ipsum
                fuga alias quae ratione a officiis id temporibus autem? Quod nemo facilis cupiditate. Ex, vel?</p>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Odit amet enim quod veritatis, nihil voluptas
                culpa! Neque consectetur obcaecati sapiente?</p>
            <a href="#" class="btn">learn more</a>
        </div>

    </div>

</section>

<!-- review section starts -->
<section class="review" id="review">

    <h1 class="heading"> customer <span>reviews</span></h1>

    <div class="box-container">

        <div class="box">
            <img src="../../pub/img/quote-img.png" alt="" class="quote">
            <p>Narwhal man braid snackwave YOLO tofu viral glossier af kitsch pabst. Austin knausgaard lyft mlkshk beard
                pop-up organic la croix franzen pok pok taxidermy bushwick stumptown mustache gochujang.</p>
            <img src="../../pub/img/deku_link.png" class="user" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>

        <div class="box">
            <img src="../../pub/img/quote-img.png" alt="" class="quote">
            <p>Keffiyeh yuccie drinking vinegar pop-up disrupt raclette banh mi. Thundercats brooklyn adaptogen XOXO
                kogi flannel chillwave pug actually readymade art party woke. Cronut offal kinfolk 3 wolf moon deep.</p>
            <img src="../../pub/img/deku-butler.png" class="user" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>

        <div class="box">
            <img src="../../pub/img/quote-img.png" alt="" class="quote">
            <p>Austin knausgaard beard pop-up organic la croix franzen pok pok taxidermy bushwick stumptown mustache
                gochujang. Goth vape art party coffee tumblr jianbing freegan hot chicken sriracha vice flannel.</p>
            <img src="../../pub/img/deku-king.jpg" class="user" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>

    </div>

</section>

<!-- contact section starts -->

<section class="contact" id="contact">

    <h1 class="heading"><span>contact</span> us </h1>

    <div class="row shadow">

        <iframe class="map"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2826.628617853403!2d-93.41750474839296!3d44.89020627947641!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87f621e12e33a9df%3A0x2f7bba93dedee49a!2sOptum!5e0!3m2!1sen!2sus!4v1648875010312!5m2!1sen!2sus"
                allowfullscreen="" loading="lazy"></iframe>

        <form action="#">
            <h3>get more info</h3>
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="name">
            </div>
            <div class="inputBox">
                <span class="fas fa-envelope"></span>
                <input type="email" placeholder="email">
            </div>
            <div class="inputBox">
                <span class="fas fa-phone"></span>
                <input type="text" placeholder="text">
            </div>
            <div class="select-box">

                <label for="select-box1" class="label select-box1"><span class="label-desc">Type of Query</span>
                </label>
                <select id="select-box1" class="select">
                    <option value="Choice 1">Product Questions</option>
                    <option value="Choice 2">Site Support</option>
                    <option value="Choice 3">Payments & Delivery</option>
                    <option value="Choice 4">Press and Media</option>
                    <option value="Choice 5">Customer Feedback</option>
                </select>

            </div>


            <input type="submit" value="contact now" class="btn" id="contact-submit-btn">
        </form>

    </div>

</section>

<jsp:include page="include/footer.jsp" />

