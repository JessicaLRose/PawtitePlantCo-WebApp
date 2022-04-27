<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="jstlC" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./include/head.jsp"/>

<link href="<c:url value="../pub/css/navbarMain.css"/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value="../pub/css/index.css"/>" rel="stylesheet" type="text/css"/>

<title>Pawt&iuml;te Plant Co | Home</title>
</head>

<body>
<jsp:include page="./include/navbarMain.jsp" />

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

<section class="featured" id="featured">
    <h1 class="heading"> featured <span>succulents</span></h1>
    <div class="box-container">

        <div class="box">
            <img src="..\..\..\pub\img\plant-img-1.png" alt="image">
            <h3>Sempervivum Red Lion</h3>
            <div class="price">5.75 <span>6.95</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="..\..\..\pub\img\plant-img-7.png" alt="image">
            <h3>Bunny Ear Cactus</h3>
            <div class="price">$6.25 <span>8.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="..\..\..\pub\img\plant-img-5.png" alt="image">
            <h3>Sedum Major</h3>
            <div class="price">$5.75 <span>7.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="..\..\..\pub\img\plant-img-8.png" alt="image">
            <h3>Variegata String of Hearts</h3>
            <div class="price">$5.75 <span>8.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="..\..\..\pub\img\plant-img-3.png" alt="image">
            <h3>Haworthia Zebra</h3>
            <div class="price">$6.75 <span>7.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <img src="..\..\..\pub\img\plant-img-6.png" alt="image">
            <h3>Echeveria Perle Von Nunberg</h3>
            <div class="price">$5.75 <span>7.99</span></div>
            <a href="#" class="btn">add to cart</a>
        </div>
    </div>
</section>

<section class="types" id="types">
    <h1 class="heading shadow"><span>succulent</span> types </h1>
    <div class="row cards">
        <div class="col-sm-6 wrapper">
            <div class="card soft">
                <div class="card-body">
                    <h3 class="soft-title">Soft Succulents</h3>
                    <p class="card-text">The term "soft succulents" covers a broad spectrum of varieties from warm climates. They make great indoor plants, but can also grow outdoors in frost-free weather. Soft succulents display a wide range of forms and colors from vibrant to pastel tones. But they do all have one thing in common: low water needs. Be sure to plant in well-draining pots / soil, grow in sunny locations, and only water when completely dry.</p>
                    <a href="/shop/products" class="btn">Explore</a>
                </div>
            </div>
        </div>
        <div class="col-sm-6 wrapper">
            <div class="card hardy">
                <div class="card-body">
                    <h3 class="hardy-title">Hardy Succulents</h3>
                    <p class="card-text">Hardy Succulents make it easy to grow colorful rosettes and lush groundcover outdoors in most regions. Many thrive in colder climates and will tolerate extended drought. These low-maintenance plants are easy growers and bring vibrant colors and winter interest to rock gardens, ground cover, living walls, container arrangements, and so much more!</p>
                    <a href="/shop/products" class="btn">Explore</a>
                </div>
            </div>
        </div>
    </div>
</section>

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

<section class="review" id="review">
    <h1 class="heading"> customer <span>reviews</span></h1>
    <div class="box-container">

        <div class="box">
            <img src="../../pub/img/quote-img.png" alt="" class="quote">
            <p>Narwhal man braid snackwave YOLO tofu viral glossier af kitsch pabst. Austin knausgaard lyft mlkshk beard
                pop-up organic la croix franzen pok pok taxidermy bushwick stumptown mustache gochujang.</p>
            <img src="../../pub/img/deku_link.png" class="user" alt="image">
            <h3>Link Leif</h3>
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
            <h3>Deku Dad</h3>
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
            <h3>king kale</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
        </div>
    </div>
</section>

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
                <label for="contact-form" class="label contact-form"><span class="label-desc">Type of Query</span>
                </label>
                <select id="contact-form" class="select">
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

