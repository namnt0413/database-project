<?php
    include 'header.php';
    $book_id = $_GET['id'];
    // var_dump($book_id);exit;

    $genres = mysqli_query($con, "SELECT * FROM genres ;  ");  
    // var_dump($author);exit;
     ?>
   <body>      
        <?php if (empty($_SESSION['current_user'])) { ?>
            <a href="login.php">Đăng nhập để vào trang Admin</a>
            <?php
         } else {
        
        include 'menu_sidebar.php';
        $currentUser = $_SESSION['current_user'];
        ?>

        <!-- PAGE CONTAINER-->
        <div class="page-container">

    <?php 
         
        include 'admin_navbar.php';
    ?>
        <!-- MAIN CONTENT -->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="row">
                        <?php
                        $error = false;
                        
                        if (isset($_GET['action']) && $_GET['action'] == 'create' && isset($_GET['id']) ) {
                            // include '../connect_db.php';

                            

                            $result = mysqli_query($con, "INSERT INTO `books_genres` (`book_id`,`genres_id`)
                            VALUES ('" . $book_id . "' , '" . $_POST['genres_id'] . "'  ) ");
                            // var_dump($result);exit;
                            if (!$result) {
                                $error = "Không thể thêm thể loại.";
                            }
                            mysqli_close($con);
                            if ($error !== false) {
                                ?>
                                <div id="error-notify" class="box-content">
                                    <h2>Thông báo</h2>
                                    <h4><?= $error ?></h4>
                                    <a href="javascript:window.history.go(-1)">Quay lại</a>
                                </div>
                            <?php } else { ?>
                                <div id="success-notify" class="box-content">
                                    <h2>Thêm thể loại thành công</h2>
                                    <a href="javascript:window.history.go(-2)">Quay lại</a>
                                </div>
                            <?php } ?>


                        <?php } else {   
                            ?> 

                                <a class="fa fa-undo" href="javascript:window.history.go(-1)">  Quay lại</a>
                            </div><!-- end row1 -->

                            <div class="row">
                                <h1>Chọn thể loại cần thêm : </h1>
                            </div>

                            <div class="row">
                                <form action="./book_add_genres.php?action=create&id=<?=$book_id?>" method="Post" autocomplete="off">
                                    <div class="input-block">
                                        </br>
                                        <select name="genres_id" id="">
                                <?php while( $row = mysqli_fetch_array($genres) ){ ?>
                                            <option value="<?= $row['id'] ?>"><?= $row['name'] ?></option>
                                <?php } ?>
                                        </select>
                                            <!-- <input class="input-area" type="text" name="author_id" value="" /> -->
                                    </div>
                                    <br>
                                    <input class="btn btn-success"  type="submit" value="Thêm thể loại" />
                                </form> 
                        <?php } ?>
 
                            </div>
                    </div>
                </div>
            </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>
    <script src="vendor/vector-map/jquery.vmap.js"></script>
    <script src="vendor/vector-map/jquery.vmap.min.js"></script>
    <script src="vendor/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="vendor/vector-map/jquery.vmap.world.js"></script>
    <script src="vendor/vector-map/jquery.vmap.brazil.js"></script>
    <script src="vendor/vector-map/jquery.vmap.europe.js"></script>
    <script src="vendor/vector-map/jquery.vmap.france.js"></script>
    <script src="vendor/vector-map/jquery.vmap.germany.js"></script>
    <script src="vendor/vector-map/jquery.vmap.russia.js"></script>
    <script src="vendor/vector-map/jquery.vmap.usa.js"></script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

    <?php } ?>   <!-- end else -->

</body>

</html>
<!-- end document-->
