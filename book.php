<?php include 'header.php' ?>

        <link rel="stylesheet" href="./assets/css/book.css">
        <link rel="stylesheet" href="./assets/js/book.js">


        <div class="container">
            <div class="bg-white rounded d-flex align-items-center justify-content-between" id="header"> <button class="btn btn-hide text-uppercase" type="button" data-toggle="collapse" data-target="#filterbar" aria-expanded="false" aria-controls="filterbar" id="filter-btn" onclick="changeBtnTxt()"> <span class="fas fa-angle-left" id="filter-angle"></span> <span id="btn-txt">Filters</span> </button>
                <nav class="navbar navbar-expand-lg navbar-light pl-lg-0 pl-auto"> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mynav" aria-controls="mynav" aria-expanded="false" aria-label="Toggle navigation" onclick="chnageIcon()" id="icon"> <span class="navbar-toggler-icon"></span> </button>
                    <div class="collapse navbar-collapse" id="mynav">
                        <ul class="navbar-nav d-lg-flex align-items-lg-center">
                            <li class="nav-item active"> <select name="sort" id="sort">
                                    <option value="" hidden selected>Sort by</option>
                                    <option value="price">Price</option>
                                    <option value="popularity">Popularity</option>
                                    <option value="rating">Rating</option>
                                </select> </li>
                            <li class="nav-item d-inline-flex align-items-center justify-content-between mb-lg-0 mb-3">
                                <div class="d-inline-flex align-items-center mx-lg-2" id="select2">
                                    <div class="pl-2">Products:</div> <select name="pro" id="pro">
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                    </select>
                                </div>
                                <div class="font-weight-bold mx-2 result">18 from 200</div>
                            </li>
                            <li class="nav-item d-lg-none d-inline-flex"> </li>
                        </ul>
                    </div>
                </nav>
                <div class="ml-auto mt-3 mr-2">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"> <a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true" class="font-weight-bold">&lt;</span> <span class="sr-only">Previous</span> </a> </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">..</a></li>
                            <li class="page-item"><a class="page-link" href="#">24</a></li>
                            <li class="page-item"> <a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true" class="font-weight-bold">&gt;</span> <span class="sr-only">Next</span> </a> </li>
                        </ul>
                    </nav>
                </div>
            </div>
            
            <div id="content" class="my-5">
                <div id="filterbar" class="collapse">
                    <div class="box border-bottom">
                        <div class="form-group text-center">
                            <div class="btn-group" data-toggle="buttons"> <label class="btn btn-success form-check-label"> <input class="form-check-input" type="radio"> Reset </label> <label class="btn btn-success form-check-label active"> <input class="form-check-input" type="radio" checked> Apply </label> </div>
                        </div>
                        <div> <label class="tick">New <input type="checkbox" checked="checked"> <span class="check"></span> </label> </div>
                        <div> <label class="tick">Sale <input type="checkbox"> <span class="check"></span> </label> </div>
                    </div>
                    <div class="box border-bottom">
                        <div class="box-label text-uppercase d-flex align-items-center">Outerwear <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#inner-box" aria-expanded="false" aria-controls="inner-box" id="out" onclick="outerFilter()"> <span class="fas fa-plus"></span> </button> </div>
                        <div id="inner-box" class="collapse mt-2 mr-1">
                            <div class="my-1"> <label class="tick">Windbreaker <input type="checkbox" checked="checked"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Jumpsuit <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Jacket <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Coat <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Raincoat <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Handbag <input type="checkbox" checked> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Warm vest <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Wallets <input type="checkbox" checked> <span class="check"></span> </label> </div>
                        </div>
                    </div>
                    <div class="box border-bottom">
                        <div class="box-label text-uppercase d-flex align-items-center">season <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#inner-box2" aria-expanded="false" aria-controls="inner-box2"><span class="fas fa-plus"></span></button> </div>
                        <div id="inner-box2" class="collapse mt-2 mr-1">
                            <div class="my-1"> <label class="tick">Spring <input type="checkbox" checked="checked"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Summer <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Autumn <input type="checkbox" checked> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Winter <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Rainy <input type="checkbox"> <span class="check"></span> </label> </div>
                        </div>
                    </div>
                    <div class="box border-bottom">
                        <div class="box-label text-uppercase d-flex align-items-center">price <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#price" aria-expanded="false" aria-controls="price"><span class="fas fa-plus"></span></button> </div>
                        <div class="collapse" id="price">
                            <div class="middle">
                                <div class="multi-range-slider"> <input type="range" id="input-left" min="0" max="100" value="10"> <input type="range" id="input-right" min="0" max="100" value="50">
                                    <div class="slider">
                                        <div class="track"></div>
                                        <div class="range"></div>
                                        <div class="thumb left"></div>
                                        <div class="thumb right"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mt-2">
                                <div> <span id="amount-left" class="font-weight-bold"></span> uah </div>
                                <div> <span id="amount-right" class="font-weight-bold"></span> uah </div>
                            </div>
                        </div>
                    </div>
                    <div class="box">
                        <div class="box-label text-uppercase d-flex align-items-center">size <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#size" aria-expanded="false" aria-controls="size"><span class="fas fa-plus"></span></button> </div>
                        <div id="size" class="collapse">
                            <div class="btn-group d-flex align-items-center flex-wrap" data-toggle="buttons"> <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"> 80 </label> <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox" checked> 92 </label> <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox" checked> 102 </label> <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox" checked> 104 </label> <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox" checked> 106 </label> <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox" checked> 108 </label> </div>
                        </div>
                    </div>
                </div>

                <div id="products">
                    <div class="row mx-0">
                        <div class="col-lg-3 col-md-6 pt-md-4 pt-3">
                            <div class="card d-flex flex-column align-items-center">
                                <div class="product-name text-center" style="font-size:1.6rem;">Book Name</div>
                                <div class="card-img"> <img src="./assets/image/book-3.png" alt=""> </div>
                                <div class="card-info">
                                    <div class="text-muted mt-auto"><a href="" style="font-size: 1.2rem;">Author Name</a></div>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center price">
                                        <p class="price" style="margin-top: 1rem; font-weight: 600; font-size: 20px;color: #f33f3f;">50.000đ<span>$20.99</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 pt-md-4 pt-3">
                            <div class="card d-flex flex-column align-items-center">
                                <div class="product-name text-center" style="font-size:1.6rem;">Book Name</div>
                                <div class="card-img"> <img src="./assets/image/book-3.png" alt=""> </div>
                                <div class="card-info">
                                    <div class="text-muted mt-auto"><a href="" style="font-size: 1.2rem;">Author Name</a></div>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center price">
                                        <p class="price" style="margin-top: 1rem; font-weight: 600; font-size: 20px;color: #f33f3f;">50.000đ<span>$20.99</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 pt-md-4 pt-3">
                            <div class="card d-flex flex-column align-items-center">
                                <div class="product-name text-center" style="font-size:1.6rem;">Book Name</div>
                                <div class="card-img"> <img src="./assets/image/book-3.png" alt=""> </div>
                                <div class="card-info">
                                    <div class="text-muted mt-auto"><a href="" style="font-size: 1.2rem;">Author Name</a></div>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center price">
                                        <p class="price" style="margin-top: 1rem; font-weight: 600; font-size: 20px;color: #f33f3f;">50.000đ<span>$20.99</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 pt-md-4 pt-3">
                            <div class="card d-flex flex-column align-items-center">
                                <div class="product-name text-center" style="font-size:1.6rem;">Book Name</div>
                                <div class="card-img"> <img src="./assets/image/book-3.png" alt=""> </div>
                                <div class="card-info">
                                    <div class="text-muted mt-auto"><a href="" style="font-size: 1.2rem;">Author Name</a></div>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center price">
                                        <p class="price" style="margin-top: 1rem; font-weight: 600; font-size: 20px;color: #f33f3f;">50.000đ<span>$20.99</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 pt-md-4 pt-3">
                            <div class="card d-flex flex-column align-items-center">
                                <div class="product-name text-center" style="font-size:1.6rem;">Book Name</div>
                                <div class="card-img"> <img src="./assets/image/book-3.png" alt=""> </div>
                                <div class="card-info">
                                    <div class="text-muted mt-auto"><a href="" style="font-size: 1.2rem;">Author Name</a></div>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center price">
                                        <p class="price" style="margin-top: 1rem; font-weight: 600; font-size: 20px;color: #f33f3f;">50.000đ<span>$20.99</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 pt-md-4 pt-3">
                            <div class="card d-flex flex-column align-items-center">
                                <div class="product-name text-center" style="font-size:1.6rem;">Book Name</div>
                                <div class="card-img"> <img src="./assets/image/book-3.png" alt=""> </div>
                                <div class="card-info">
                                    <div class="text-muted mt-auto"><a href="" style="font-size: 1.2rem;">Author Name</a></div>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center price">
                                        <p class="price" style="margin-top: 1rem; font-weight: 600; font-size: 20px;color: #f33f3f;">50.000đ<span>$20.99</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 pt-md-4 pt-3">
                            <div class="card d-flex flex-column align-items-center">
                                <div class="product-name text-center" style="font-size:1.6rem;">Book Name</div>
                                <div class="card-img"> <img src="./assets/image/book-3.png" alt=""> </div>
                                <div class="card-info">
                                    <div class="text-muted mt-auto"><a href="" style="font-size: 1.2rem;">Author Name</a></div>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center price">
                                        <p class="price" style="margin-top: 1rem; font-weight: 600; font-size: 20px;color: #f33f3f;">50.000đ<span>$20.99</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 pt-md-4 pt-3">
                            <div class="card d-flex flex-column align-items-center">
                                <div class="product-name text-center" style="font-size:1.6rem;">Book Name</div>
                                <div class="card-img"> <img src="./assets/image/book-3.png" alt=""> </div>
                                <div class="card-info">
                                    <div class="text-muted mt-auto"><a href="" style="font-size: 1.2rem;">Author Name</a></div>
                                    <div class="stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center price">
                                        <p class="price" style="margin-top: 1rem; font-weight: 600; font-size: 20px;color: #f33f3f;">50.000đ<span>$20.99</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                       
                    </div>
                </div>
            </div>
        </div><!-- end container -->


        <script src="./vendor/jquery/jquery.min.js"></script>
        <script src="./vendor/jquery/jquery.slim.min.js"></script>
        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src=''></script>
        <script type='text/javascript' src=''></script>


        </div>
    </body>
 </html>