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
    <link rel="stylesheet" href="./assets/css/mail_form.css">


    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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

        <!-- Page Content -->
    <div class="page-heading contact-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            


          </div>
        </div>
      </div>
    </div>


    <div class="find-us">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <br><h2>Our Location on Maps</h2><br>
            </div>
          </div>
          <div class="col-md-8">
<!-- How to change your own map point
    1. Go to Google Maps
    2. Click on your location point
    3. Click "Share" and choose "Embed map" tab
    4. Copy only URL and paste it within the src="" field below
-->
            <div id="map">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7172162244697!2d105.84526041476283!3d21.003969686011754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac743ba55555%3A0xb835dcc0410fa11!2zTmjDoCBTw6FjaCBCw6FjaCBLaG9h!5e0!3m2!1svi!2s!4v1637007397716!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
          </div>
          <div class="col-md-4">
            <div class="left-content">
              <h4>About our contact info</h4>
              <ul>
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-behance"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
         <?php
        // 2 phuong thuc de gui mail
        use PHPMailer\PHPMailer\PHPMailer;
        use PHPMailer\PHPMailer\Exception;

        if (isset($_GET['action']) && $_GET['action'] == "send") {
            if (empty($_POST['email'])) { //Kiểm tra xem trường email có rỗng không?
                $error = "Bạn phải nhập địa chỉ email";
            } elseif (!empty($_POST['email']) && !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
                $error = "Bạn phải nhập email đúng định dạng";
            } elseif (empty($_POST['content'])) { //Kiểm tra xem trường content có rỗng không?
                $error = "Bạn phải nhập nội dung";
            }
            if (!isset($error)) {
                include 'library.php'; // include the library file

                require 'vendor/autoload.php';  // call autoload de goi ra toan thu vien 
                $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
                try {
                    //Server settings
                    $mail->CharSet = "UTF-8";
                    $mail->SMTPDebug = 0;                                 // Enable verbose debug output
                    $mail->isSMTP();                                      // Set mailer to use SMTP
                    $mail->Host = SMTP_HOST;  // Specify main and backup SMTP servers
                    $mail->SMTPAuth = true;                               // Enable SMTP authentication
                    $mail->Username = SMTP_UNAME;                 // SMTP lay username
                    $mail->Password = SMTP_PWORD;                 // lay mat khau 
                    $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
                    $mail->Port = SMTP_PORT;  

                    //Recipients : TH SHOP gui cho user
                    $mail->setFrom(SMTP_UNAME, "SixteenClothingShop");      // ten nguoi gui
                    $mail->addAddress($_POST['email'], 'Customers');     // Add a recipient | name is option     ten nguoi nhan
                    $mail->addReplyTo(SMTP_UNAME, 'Customers');

//                    $mail->addCC('CCemail@gmail.com');
//                    $mail->addBCC('BCCemail@gmail.com');
                    $mail->isHTML(true);                                  // Set email format to HTML
                    $mail->Subject = $_POST['title'];
                    $mail->Body = $_POST['content'];
                    $mail->AltBody = $_POST['content']; //None HTML
                    $result = $mail->send();
                    if (!$result) {
                        $error = "Có lỗi xảy ra trong quá trình gửi mail";
                    }
                    //  try : co gang thuc hien ben trong ham nya, catch: ngoai le thi se dc bat vao ham catch
                } catch (Exception $e) {
                    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
                }
            }
            ?>
             <div class = "container">
                <div class = "error"><?= isset($error) ? $error : "Gửi email thành công" ?></div>
                <a href = "index.php">Quay lại form gửi mail</a>
            </div>
             <?php } else {
            ?>
            <div class="container-contact100" style="background-image: url('images/bg-01.jpg');">
            <div class="wrap-contact100">
                <form class="contact100-form validate-form">
                <span class="contact100-form-title">
                    Get in Touch
                </span>

                <div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Name is required">
                    <span class="label-input100">Tell us your name *</span>
                    <input class="input100" type="text" name="name" placeholder="Enter your name">
                </div>

                <div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <span class="label-input100">Enter your email *</span>
                    <input class="input100" type="text" name="email" placeholder="Enter your email">
                </div>

                <div class="wrap-input100">
                    <span class="label-input100">Tittle</span>
                    <input class="input100" type="text" name="web" placeholder="">
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Message is required">
                    <span class="label-input100">Message</span>
                    <textarea class="input100" name="message" placeholder="Your message here..."></textarea>
                </div>

                <div class="container-contact100-form-btn">
                    <div class="wrap-contact100-form-btn">
                        <div class="contact100-form-bgbtn"></div>
                        <button class="contact100-form-btn">
                            Submit
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>

<?php } ?>
    
    

   





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