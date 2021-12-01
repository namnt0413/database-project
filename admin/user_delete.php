<?php
    include 'header.php';
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
        <style>
            .box-content{
                margin: 76px auto 0;
                width: 800px;
                border: 1px solid #ccc;
                text-align: center;
                padding: 20px;
            }
            #create_user form{
                width: 200px;
                margin: 40px auto;
            }
            #create_user form input{
                margin: 5px 0;
            }
        </style>
        <?php
        $error = false;
        if (isset($_GET['id']) && !empty($_GET['id'])) {
            include '../connect_db.php';
            $result = mysqli_query($con, "DELETE FROM `users` WHERE `id` = " . $_GET['id']);
            if (!$result) {
                $error = "Không thể xóa tài khoản.";
            }
            mysqli_close($con);
            if ($error !== false) {
                ?>
                <div id="error-notify" class="box-content">
                    <h1>Thông báo</h1>
                    <h4><?= $error ?></h4>
                    <a href="./user.php">Danh sách tài khoản</a>
                </div>
            <?php } else { ?>
                <div id="success-notify" class="box-content">
                    <h1>Xóa tài khoản thành công</h1>
                    <a href="./user.php">Danh sách tài khoản</a>
                </div>
            <?php } ?>
        <?php } ?>

            </div><!-- end container -->
            
        <?php } ?>   <!-- end else -->
    </body>
</html>
