<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://site.aace.org/wp-content/uploads/2018/04/Book-Icon.png" type="image/x-icon"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <title>Bookly Online Shop</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom main css file link  -->
    <link rel="stylesheet" href="./assets/css/main.css">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .blogs .list_blogs {
            display: inline-block;
            max-width: 30%;
            max-height: 300px;


        }

    </style>



</head>

<body>
    <!-- header section starts  -->
    <header class="header">
    
        <div class="header-1">
    
            <a href="index.php" class="logo"> <i class="fas fa-book"></i> bookly </a>
    
            <form action="" class="search-form">
                <input type="search" name="" placeholder="search here..." id="search-box">
                <label for="search-box" class="fas fa-search"></label>
            </form>
    
            <div class="icons">
                <div id="search-btn" class="fas fa-search"></div>
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-shopping-cart"></a>
                <div id="login-btn" class="fas fa-user"></div>
            </div>
    
        </div>
    
        <div class="header-2">
            <nav class="navbar">
                <a href="index.php">home</a>
                <a href="featured.php">featured</a>
    
                <a href="reviews.php">reviews</a>
                <a href="blogs.php">blogs</a>
                <a href="contact.php">contact</a>
            </nav>
        </div>
    
    </header>
    <!-- header section ends -->


    <!-- bottom navbar  -->
    <nav class="bottom-navbar">
        <a href="#home" class="fas fa-home"></a>
        <a href="#featured" class="fas fa-list"></a>
        <a href="#arrivals" class="fas fa-tags"></a>
        <a href="#reviews" class="fas fa-comments"></a>
        <a href="#blogs" class="fas fa-blog"></a>
    </nav>

    <!-- login form  -->
    <div class="login-form-container">
    
        <div id="close-login-btn" class="fas fa-times"></div>
    
        <form action="">
            <h3>sign in</h3>
            <span>username</span>
            <input type="email" name="" class="box" placeholder="enter your email" id="">
            <span>password</span>
            <input type="password" name="" class="box" placeholder="enter your password" id="">
            <div class="checkbox">
                <input type="checkbox" name="" id="remember-me">
                <label for="remember-me"> remember me</label>
            </div>
            <input type="submit" value="sign in" class="button">
            <p>forget password ? <a href="#">click here</a></p>
            <p>don't have an account ? <a href="#">create one</a></p>
        </form>
    
    </div>


        <!-- blogs section starts  -->
    <section class="blogs" id="blogs">
    
        <h1 class="heading"> <span>our blogs</span> </h1>
        <!-- <a class="link_blogs" href="blogs.php">view all blogs <i class="fa fa-angle-right"></i></a> -->
            
        <div class="list_blogs">
            <div class="image">
                <img src="./assets/image/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <h3>blog title goes here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                <a href="#" class="button">read more</a>
            </div>
        </div>
    
        <div class="list_blogs">
            <div class="image">
                <img src="./assets/image/blog-2.jpg" alt="">
            </div>
            <div class="content">
                <h3>blog title goes here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                <a href="#" class="button">read more</a>
                </div>
            </div>

        <div class="list_blogs">
            <div class="image">
                <img src="./assets/image/blog-3.jpg" alt="">
            </div>
            <div class="content">
                <h3>blog title goes here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                <a href="#" class="button">read more</a>
            </div>
        </div>

        <div class="list_blogs">
            <div class="image">
                <img src="./assets/image/blog-4.jpg" alt="">
            </div>
            <div class="content">
                <h3>blog title goes here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                <a href="#" class="button">read more</a>
            </div>
        </div>

        <div class="list_blogs">
            <div class="image">
                <img src="./assets/image/blog-5.jpg" alt="">
            </div>
            <div class="content">
                <h3>blog title goes here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio, odio.</p>
                <a href="#" class="button">read more</a>
                </div>
                </div>
    
    
    </section>
    <!-- blogs section ends -->










    <!-- footer section starts  -->
    <section class="footer">
    
        <div class="box-container">
    
            <div class="box">
                <h3>our locations</h3>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> russia </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> france </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> japan </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> africa </a>
            </div>
    
            <div class="box">
                <h3>quick links</h3>
                <a href="#"> <i class="fas fa-arrow-right"></i> home </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> featured </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> arrivals </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> reviews </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> blogs </a>
            </div>
    
            <div class="box">
                <h3>extra links</h3>
                <a href="#"> <i class="fas fa-arrow-right"></i> account info </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> ordered items </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> privacy policy </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> payment method </a>
                <a href="#"> <i class="fas fa-arrow-right"></i> our serivces </a>
            </div>
    
            <div class="box">
                <h3>contact info</h3>
                <a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
                <a href="#"> <i class="fas fa-phone"></i> +111-222-3333 </a>
                <a href="#"> <i class="fas fa-envelope"></i> shaikhanas@gmail.com </a>
                <img src="./assets/image/worldmap.png" class="map" alt="">
            </div>
            
        </div>
    
        <div class="share">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
            <a href="#" class="fab fa-pinterest"></a>
        </div>
    
        <div class="credit"> created by <span>mr. web designer</span> | all rights reserved! </div>
    
    </section>
    <!-- footer section ends -->

        <!-- Optional JavaScript -->
        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    
        <!-- custom js file link  -->
        <script src="./assets/js/main.js"></script>
    </body>
</html>