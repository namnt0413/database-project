<?php 
    include 'header.php' ;



?>   

        <link rel="stylesheet" href="./assets/css/cart.css">
        <div class="container">
        <form id="cart-form" action="cart.php?action=submit" method="POST">

        <div class="card">
            <div class="row">
                <div class="col-md-11 cart" style="margin:auto">
                    <div class="title">
                        <div class="row">
                            <div class="col">
                                <h4><b>GIỎ HÀNG</b></h4>
                            </div>
                            <div class="col align-self-center text-right text-muted">3 items</div>
                        </div>
                    </div>
                    <!-- Hàng tiêu đề -->
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                        <div class="row main align-items-center">
                            <div style="padding: 5px;">STT</div>
                            <div class="col-4">
                                <div class="row text-muted">Tên sách</div>
                                <div class="row">A</div>
                            </div>
                            <div class="col-2 text-center" >Hình ảnh</div>
                            <div class="col-2 text-center">
                                <p>Đơn giá</p>
                            </div>
                            <div class="col-1" style="padding-right: 0;">
                                Số lượng
                             </div>
                            <div class="col-2 text-center">Thành tiền</div>
                        </div>
                    </div>

                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                        <div class="row main align-items-center">
                            <div style="padding: 5px;">1</div>
                            <div class="col-4">
                                <div class="row text-muted">999 Lá Thư Gửi Cho Chính Mình - Phiên Bản Sổ Tay - Tập 8</div>
                                <div class="row">A</div>
                            </div>
                            <div class="col-2 text-center" ><img class="img-fluid" src="./assets/image/book-1.png"></div>
                            <div class="col-2 text-center">
                                <p>50000đ</p>
                            </div>
                            <div class="col-1" style="padding-right: 0;">
                                <input type="number" value="1" name="quantity" size=2 style="padding:0;"/>
                             </div>
                            <div class="col-2 text-center">100.000đ</div>
                           <a href="cart.php?action=delete&id=" class="fa fa-trash" style="padding: 2px;"></a>

                        </div>
                    </div>
                    
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                        <div class="row main align-items-center">
                            <div style="padding: 5px;">1</div>
                            <div class="col-4">
                                <div class="row text-muted">TestBook số 2 - 222</div>
                                <div class="row">A</div>
                            </div>
                            <div class="col-2 text-center" ><img class="img-fluid" src="./assets/image/book-2.png"></div>
                            <div class="col-2 text-center">
                                <p>5000000đ</p>
                            </div>
                            <div class="col-1" style="padding-right: 0;">
                                <input type="number" value="1" name="quantity" size=2 style="padding:0;"/>
                             </div>
                            <div class="col-2 text-center">100.000.000đ</div>
                           <a href="cart.php?action=delete&id=" class="fa fa-trash" style="padding: 2px;"></a>

                        </div>
                    </div>

                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                        <div class="row main align-items-center">
                            <div style="padding: 5px;">1</div>
                            <div class="col-4">
                                <div class="row text-muted">TestBook số 3 - 333</div>
                                <div class="row">A</div>
                            </div>
                            <div class="col-2 text-center" ><img class="img-fluid" src="./assets/image/book-3.png"></div>
                            <div class="col-2 text-center">
                                <p>50000đ</p>
                            </div>
                            <div class="col-1" style="padding-right: 0;">
                                <input type="number" value="1" name="quantity" size=2 style="padding:0;"/>
                             </div>
                            <div class="col-2 text-center">100.000đ</div>
                           <a href="cart.php?action=delete&id=" class="fa fa-trash" style="padding: 2px;"></a>

                        </div>
                    </div>

                    <div class="back-to-shop"><a class="fa fa-reply" href="book.php">Back to shop</a></div>
                </div>
            </div> 
            
            <div class="row">
                <div class="col-md-11 summary" style="margin:auto;">
                    <div>
                        <h5><b> ĐƠN HÀNG </b></h5>
                    </div>
                    <hr>
                    <div class="row">
                    <div class="col text-left">TỔNG TIỀN HÀNG</div>
                        <div class="col text-right">195.000đ</div>
                    </div>
                    
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col-6">
                            <p>Người nhận hàng</p> <input placeholder="Nhập Tên">
                        </div>
                        <div class="col-6">
                            <p>Số điện thoại</p> <input placeholder="Nhập SĐT">
                        </div>
                    </div>   
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col-6">
                            <p>Địa chỉ</p> <input placeholder="Nhập Địa chỉ">
                        </div>
                        <div class="col-6">
                            <p>Cách giao hàng</p> 
                            <select>
                                <option class="text-muted">Giao hàng thông thường - 5.000đ</option>
                                <option class="text-muted">Giao hàng nhanh - 20000đ</option>
                            </select>
                        </div>
                    </div>   
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <p>Ghi chú: </p><textarea name="note" cols="128" rows="6" style="margin:auto;"></textarea>
                    </div>
                    <div class="row" style="justify-content:center; border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <p>TỔNG THANH TOÁN : <b class="text-danger" style="font-size:1.5rem">200.000đ</b></p>   
                    </div>
                    <div class="row">
                       <input id="order_click" type="submit" name="order_click" value="Đặt hàng" />
                    </div>
            </div>
        </div>                    



        </form>
        </div>
        <!--container.//-->


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
</html>