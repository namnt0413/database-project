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
        // neu ton tai cation GET = create
        if (isset($_GET['action']) && $_GET['action'] == 'create') {
            if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
            // POST nhan dc day du username va password
                include '../connect_db.php';
                // Thêm bản ghi vào cơ sở dữ liệu
                $result = mysqli_query($con, "INSERT INTO `customers` (`id`, `username`, `password`, `status`, `created_date`, `last_updated`) VALUES (NULL, '" . $_POST['username'] . "', MD5('" . $_POST['password'] . "'), 1, '" . time() . "', '" . time() . "');");
                // neu nhu ko insert dc : trung ten user
                if (!$result) {
                    if (strpos(mysqli_error($con), "Duplicate entry") !== FALSE) {
                        $error = "Tài khoản đã tồn tại. Bạn vui lòng chọn tài khoản khác.";
                    }
                }
                mysqli_close($con);
                // trong TH ma ko dang ki duoc
                if ($error !== false) {
                    ?>
                    <div id="error-notify" class="box-content">
                        <h1>Thông báo</h1>
                        <h4><?= $error ?></h4>
                        <a href="./create_user.php">Tạo tài khoản khác</a>
                    </div>
                <?php } else { ?>
                    <div id="success-notify" class="box-content">
                        <h1>Chúc mừng</h1>
                        <h4>Bạn đã tạo thành công tài khoản <?= $_POST['username'] ?></h4>
                        <a href="./user.php">Danh sách tài khoản</a>
                    </div>
                <?php } ?>
            <?php } ?>
        <?php } else { ?>             
            <div id="create_user" class="box-content">
                <h1>Tạo tài khoản</h1>
                <form action="./user_create.php?action=create" method="Post" autocomplete="off">
                    <label>Username</label></br>
                    <input type="text" name="username" value="" />
                    <br>
                    <label>Password</label></br>
                    <input type="password" name="password" value="" />
                    <br><br>
                    <input class="btn-success" style="padding: 10px;" type="submit" value="Tạo tài khoản" />
                </form> 
            </div>
        <?php } ?>

        </div><!-- end container -->

        <?php } ?>   <!-- end else -->
    </body>
</html>
