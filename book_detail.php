<?php 
    include 'header.php' ;

    $result = mysqli_query($con, "SELECT * FROM `books` WHERE `id` = ".$_GET['id']);
    $book = mysqli_fetch_assoc($result);
    // var_dump($book);exit;
    $imgLibrary = mysqli_query($con, "SELECT * FROM `books_library` WHERE `book_id` = ".$_GET['id']);    // ket noi voi thu vien anh
    $book['images'] = mysqli_fetch_all($imgLibrary, MYSQLI_ASSOC);   // lay ra nhieu anh gan cho book[images]   ( # voi book[image] )
    $row_id = $book['id'];
?>   

        <link rel="stylesheet" href="./assets/css/book_detail.css">
        <link rel="stylesheet" href="./assets/js/book.js">

        <div class="container">
        <hr>
            <div class="card">
            	<div class="row">
            		<aside class="col-sm-5 border-right">
                  <article class="gall  ery-wrap"> 
                    <div class="img-big-wrap" >
                      <a href="#"><img src="<?=$book['image']?>"></a>
                    </div> <!-- book - image // -->

                  <?php if(!empty($book['images'])){ ?>
                    <div class="img-small-wrap" style="margin-top:20px;">
                      <?php foreach($book['images'] as $img) { ?>
                        <div class="item-gallery"> <img src="<?=$img['path']?>" > </div>
                      <?php } ?>
                    </div> <!-- slider-nav.// -->
                  <?php } ?>  

                  </article> <!-- gallery-wrap .end// -->
            		</aside>

            		<aside class="col-sm-7">
                  <article class="card-body p-5">
            	      <h3 class="title mb-6" style="font-size: 25px;"><?= $book['tittle']?></h3>
            
                    <p class="author-detail-wrap" style="margin-top:20px;"> 
                      <span style="font-size:1.2rem;">Tác giả :</span> 
                      <span class="price h3 text-info"> 
                        <?php
                          $author = mysqli_query($con, "SELECT authors.first_name,authors.last_name
                                                      FROM `books_authors`  INNER JOIN `authors` ON books_authors.author_id = authors.id
                                                                          INNER JOIN `books` ON books_authors.book_id = books.id
                                                      WHERE `books_authors`.`book_id` = $row_id                    
                                                                    ");  
                          while ($row2 = mysqli_fetch_array($author)){ ?>
                              <span><?= $row2['first_name']." ".$row2['last_name'].","?></span>
                        <?php } ?>
                    	</span> 
                    </p> <!-- author-detail-wrap .// -->

                    <p class="publisher-detail-wrap"> 
                        <span style="font-size:1.2rem;">Nhà xuất bản :</span> 
                    	<span class="price h3 text-info"> 
                    		<span class="">NXH xxx</span>
                    	</span> 
                    </p> <!-- publicsher-detail-wrap .// -->


                    <p class="price-detail-wrap"> 
                        <span style="font-size:1.2rem;">Giá :</span> 
                    	<span class="price h3 text-danger"> 
                    		<span class="num"><?= number_format($book['price'], 0, ",", ".") ?></span><span class="currency"> VNĐ</span>
                    	</span> 
                    </p> <!-- price-detail-wrap .// -->

                    <p class="discount-detail-wrap"> 
                        <span style="font-size:1.2rem;">Tiết kiệm :</span> 
                    	<span class="price h5 text-danger"> 
                    		<span class="num"><?= number_format(25000, 0, ",", ".") ?></span><span class="currency"> VNĐ</span><span>( 10% )</span>
                    	</span> 
                    </p> <!-- discount-detail-wrap .// -->

                    <p class="quantity-detail-wrap"> 
                        <span style="font-size:1.2rem;">Tình trạng :</span> 

                        <?php if ($book['quantity'] > 0) { ?>
                        	<span class="price h5 text-success"> Còn hàng</span>
                        <?php } else { ?> 
                          <span class="price h5 text-warning"> Hết hàng</span>
                        <?php } ?>  
                        
                    </p> <!-- quantity-detail-wrap .// -->
                        
                        
                    <dl class="item-property">
                        <h3>Giới thiệu tóm tắt tác phẩm:</h3>
                        <dd>
                            <p style="font-size:1.2rem"> <?= $book['content'] ?> </p>
                        </dd>
                    </dl>

                    <dl class="param param-feature">
                      <h4>Tags</h4>
                      <a href="#" style="font-size:1.2rem;">Thể loại xxx ,</a> 
                      <a href="#" style="font-size:1.2rem;">Thể loại xxx ,</a> 
                      <a href="#" style="font-size:1.2rem;">Thể loại xxx ,</a> 
                      <a href="#" style="font-size:1.2rem;">Thể loại xxx ,</a> 
                    </dl>  <!-- item-property-hor .// -->

                    <hr>
            	      <div class="row">
            	      	<div class="col-sm-6">
                      <?php if ($book['quantity'] > 0) { ?>
            	      		  <p style="font-size: 1.2em;">Số lượng</p>
                          <form id="add-to-cart-form" action="cart.php?action=add" method="POST">
                              <div class="row" style="margin-bottom:10px;"><input type="number" value="1" name="quantity[<?=$book['id']?>]" size="2" style="border:1px solid;text-align:center;"/></div>  
                              <input class="btn btn-lg btn-primary text-uppercase" type="submit" value="Mua ngay" style="width: 90px;" />                       
                              <a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Thêm vào giỏ hàng </a>
                          </form>  <!-- item-property .// -->

                      <?php } else { ?>
                          <span class="h5 text-warning">Sản phẩm hiện chưa có hàng</span>
                      <?php } ?>
            	      	</div> <!-- col.// -->

            		      <div class="col-sm-6    ">
            		      	<dl class="param param-inline">
            		      		  <dt>choose </dt>
            		      		  <dd>
            		      		  	<label class="form-check form-check-inline">
            		      			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
            		      			  <span class="form-check-label">SM</span>
            		      			</label>
            		      			<label class="form-check form-check-inline">
            		      			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
            		      			  <span class="form-check-label">MD</span>
            		      			</label>
            		      			<label class="form-check form-check-inline">
            		      			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
            		      			  <span class="form-check-label">XXL</span>
            		      			</label>
            		      		  </dd>
            		      	</dl>  <!-- item-property .// -->
            		      </div> <!-- col.// -->
            	      </div> <!-- row.// -->
            	      <hr>

                  </article> <!-- card-body.// -->
            		</aside> <!-- col.// -->
            	</div> <!-- row.// -->
            </div> <!-- card.// -->

            


            <div class="review_card" style="margin-top:30px">
              <!-- RATING ROW -->
              <div class="row justify-content-left d-flex">
                <div class="col-md-4 d-flex flex-column">
                    <div class="rating-box">
                        <h1 class="pt-4">4.0</h1>
                        <p class="">out of 5</p>
                    </div>
                    <div> <span class="fa fa-star star-active mx-1"></span> <span class="fa fa-star star-active mx-1"></span> <span class="fa fa-star star-active mx-1"></span> <span class="fa fa-star star-active mx-1"></span> <span class="fa fa-star star-inactive mx-1"></span> </div>
                </div>
                <div class="col-md-8">
                    <div class="rating-bar0 justify-content-center">
                        <table class="text-left mx-auto">
                            <tr>
                                <td class="rating-label">Excellent</td>
                                <td class="rating-bar">
                                    <div class="bar-container">
                                        <div class="bar-5"></div>
                                    </div>
                                </td>
                                <td class="text-right">123</td>
                            </tr>
                            <tr>
                                <td class="rating-label">Good</td>
                                <td class="rating-bar">
                                    <div class="bar-container">
                                        <div class="bar-4"></div>
                                    </div>
                                </td>
                                <td class="text-right">23</td>
                            </tr>
                            <tr>
                                <td class="rating-label">Average</td>
                                <td class="rating-bar">
                                    <div class="bar-container">
                                        <div class="bar-3"></div>
                                    </div>
                                </td>
                                <td class="text-right">10</td>
                            </tr>
                            <tr>
                                <td class="rating-label">Poor</td>
                                <td class="rating-bar">
                                    <div class="bar-container">
                                        <div class="bar-2"></div>
                                    </div>
                                </td>
                                <td class="text-right">3</td>
                            </tr>
                            <tr>
                                <td class="rating-label">Terrible</td>
                                <td class="rating-bar">
                                    <div class="bar-container">
                                        <div class="bar-1"></div>
                                    </div>
                                </td>
                                <td class="text-right">0</td>
                            </tr>
                        </table>
                    </div>
                </div>
              </div><!-- end RATING ROW -->
            </div>            

            <div class="review_card">
              <!-- COMMENT ROW -->
                <div class="row d-flex">
                    <div class=""> <img class="profile-pic" src="https://i.imgur.com/V3ICjlm.jpg"> </div>
                    <div class="d-flex flex-column">
                        <h3 class="mt-2 mb-0">Vikram jit Singh</h3>
                        <div>
                            <p class="text-left"><span class="text-muted">4.0</span> <span class="fa fa-star star-active ml-3"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-inactive"></span></p>
                        </div>
                    </div>
                    <div class="ml-auto">
                        <p class="text-muted pt-5 pt-sm-3">10 Sept</p>
                    </div>
                </div>
                <div class="row text-left">
                    <h4 class="blue-text mt-3">"An awesome activity to experience"</h4>
                    <p class="content">If you really enjoy spending your vacation 'on water' or would like to try something new and exciting for the first time.</p>
                </div>
                <div class="row text-left"> <img class="pic" src="https://i.imgur.com/kjcZcfv.jpg"> <img class="pic" src="https://i.imgur.com/SjBwAgs.jpg"> <img class="pic" src="https://i.imgur.com/IgHpsBh.jpg"> </div>
                <div class="row text-left mt-4">
                    <div class="like mr-3 vote"> <img src="https://i.imgur.com/mHSQOaX.png"><span class="blue-text pl-2">20</span> </div>
                    <div class="unlike vote"> <img src="https://i.imgur.com/bFBO3J7.png"><span class="text-muted pl-2">4</span> </div>
                </div>
            </div><!-- end review card -->
            
            <div class="review_card">
              <!-- COMMENT ROW -->
                <div class="row d-flex">
                    <div class=""> <img class="profile-pic" src="https://i.imgur.com/V3ICjlm.jpg"> </div>
                    <div class="d-flex flex-column">
                        <h3 class="mt-2 mb-0">Vikram jit Singh</h3>
                        <div>
                            <p class="text-left"><span class="text-muted">4.0</span> <span class="fa fa-star star-active ml-3"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-active"></span> <span class="fa fa-star star-inactive"></span></p>
                        </div>
                    </div>
                    <div class="ml-auto">
                        <p class="text-muted pt-5 pt-sm-3">10 Sept</p>
                    </div>
                </div>
                <div class="row text-left">
                    <h4 class="blue-text mt-3">"An awesome activity to experience"</h4>
                    <p class="content">If you really enjoy spending your vacation 'on water' or would like to try something new and exciting for the first time.</p>
                </div>
                <div class="row text-left"> <img class="pic" src="https://i.imgur.com/kjcZcfv.jpg"> <img class="pic" src="https://i.imgur.com/SjBwAgs.jpg"> <img class="pic" src="https://i.imgur.com/IgHpsBh.jpg"> </div>
                <div class="row text-left mt-4">
                    <div class="like mr-3 vote"> <img src="https://i.imgur.com/mHSQOaX.png"><span class="blue-text pl-2">20</span> </div>
                    <div class="unlike vote"> <img src="https://i.imgur.com/bFBO3J7.png"><span class="text-muted pl-2">4</span> </div>
                </div>
            </div><!-- end review card -->


        </div>
        <!--container.//-->

        
    <!-- featured section starts  -->
    <section class="featured" id="featured">
    
        <h1 class="heading"> <span>Sản phẩm có liên quan</span> </h1>
    
        <div class="swiper featured-slider">
    
            <div class="swiper-wrapper">
    
                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="./assets/image/book-2.png" alt="">
                    </div>
                    <div class="content">
                        <h3>featured books</h3>
                        <div class="price">$15.99 <span>$20.99</span></div>
                        <a href="#" class="button">add to cart</a>
                    </div>
                </div>

    
                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="./assets/image/book-8.png" alt="">
                    </div>
                    <div class="content">
                        <h3>featured books</h3>
                        <div class="price">$15.99 <span>$20.99</span></div>
                        <a href="#" class="button">add to cart</a>
                    </div>
                </div>
    
                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="./assets/image/book-10.png" alt="">
                    </div>
                    <div class="content">
                        <h3>featured books</h3>
                        <div class="price">$15.99 <span>$20.99</span></div>
                        <a href="#" class="button">add to cart</a>
                    </div>
                </div>
    
            </div>

            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </section>
    <!-- featured section ends -->        

    <!-- featured section starts  -->
    <section class="featured" id="featured">
    
        <h1 class="heading"> <span>Cùng tác giả</span> </h1>
    
        <div class="swiper featured-slider">
    
            <div class="swiper-wrapper">
    
                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="./assets/image/book-1.png" alt="">
                    </div>
                    <div class="content">
                        <h3>featured books</h3>
                        <div class="price">$15.99 <span>$20.99</span></div>
                        <a href="#" class="button">add to cart</a>
                    </div>
                </div>

    
                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="./assets/image/book-9.png" alt="">
                    </div>
                    <div class="content">
                        <h3>featured books</h3>
                        <div class="price">$15.99 <span>$20.99</span></div>
                        <a href="#" class="button">add to cart</a>
                    </div>
                </div>
    
                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="./assets/image/book-10.png" alt="">
                    </div>
                    <div class="content">
                        <h3>featured books</h3>
                        <div class="price">$15.99 <span>$20.99</span></div>
                        <a href="#" class="button">add to cart</a>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="./assets/image/book-5.png" alt="">
                    </div>
                    <div class="content">
                        <h3>featured books</h3>
                        <div class="price">$15.99 <span>$20.99</span></div>
                        <a href="#" class="button">add to cart</a>
                    </div>
                </div>
                <div class="swiper-slide box">
                    <div class="icons">
                        <a href="#" class="fas fa-search"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="./assets/image/book-6.png" alt="">
                    </div>
                    <div class="content">
                        <h3>featured books</h3>
                        <div class="price">$15.99 <span>$20.99</span></div>
                        <a href="#" class="button">add to cart</a>
                    </div>
                </div>
    
            </div>

            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </section>
    <!-- featured section ends -->        
        
    
  </body>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script></body>
  <!-- <script src="./vendor/jquery/jquery.min.js"></script>
  <script src="./vendor/jquery/jquery.slim.min.js"></script>
  <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
  <script type='text/javascript' src=''></script>
  <script type='text/javascript' src=''></script> -->


  <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    
    <!-- custom js file link  -->
  <script src="./assets/js/main.js"></script>

</html>