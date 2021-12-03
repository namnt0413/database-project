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
                margin: 74px auto 0;
                width: 800px;
                border: 1px solid #ccc;
                text-align: center;
                padding: 20px;
            }
            #edit_user form{
                width: 200px;
                margin: 40px auto;
            }
            #edit_user form input{
                margin: 5px 0;
            }
        </style>

    <?php 
        //include 'admin_navbar.php';
        $error = false;
        if (isset($_GET['action']) && $_GET['action'] == 'edit') {
            if (isset($_POST['id']) && !empty($_POST['id']) && isset($_POST['password']) && !empty($_POST['password'])) {
                // var_dump($_POST['password']);exit;
                $birthday = $_POST['birthday'];
                $check = validateDateTime($birthday);
                if ($check) {
                     $birthday = strtotime($birthday);
                }

                $result = mysqli_query($con, "UPDATE `users` SET `password` = MD5('" . $_POST['password'] . "'), `fullname` = '" . $_POST['fullname'] ."' ,
                 `birthday` = " . $birthday ." , `phone` = '" . $_POST['phone'] ."' , `address` = '" . $_POST['address'] ."' ,
                  `status` = " . $_POST['status'] . ", `last_updated`=" . time() . " WHERE `users`.`id` = " . $_POST['id'] . ";");
                if (!$result) {
                    $error = "Không thể cập nhật tài khoản";
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
                    <div id="edit-notify" class="box-content">
                        <h1><?= ($error !== false) ? $error : "Sửa tài khoản thành công" ?></h1>
                        <a href="./user.php">Danh sách tài khoản</a>
                    </div>
                <?php } ?>
            <?php } else { ?>
                <div id="edit-notify" class="box-content">
                    <h1>Vui lòng nhập đủ thông tin để sửa tài khoản</h1>
                    <a href="./user_edit.php?id=<?= $_POST['id'] ?>">Quay lại sửa tài khoản</a>
                </div>
            <?php
            }
        } else {
            //select p tu co id can sua
            $result = mysqli_query($con, "SELECT * FROM users where `id`=" . $_GET['id']);
            //lay ra toan bo gia tri cua phan tu co id do
            $user = $result->fetch_assoc();
            mysqli_close($con);
            if (!empty($user)) {
                ?>
                <div id="edit_user" class="box-content">
                    <h1>Sửa tài khoản "<?= $user['username'] ?>"</h1>
                    <form action="./user_edit.php?action=edit" method="Post" autocomplete="off">
                        <label>Mật khẩu mới</label></br>
                        <input type="hidden" name="id" value="<?= $user['id'] ?>" />
                        <input type="password" name="password" value="" />
                        <label>Họ và tên</label></br>
                        <input type="text" name="fullname" value="<?= (!empty($user) ? $user['fullname'] : "") ?>" />
                        <label>Ngày tháng năm sinh</label></br>
                        <input type="text" name="birthday" value="<?= (!empty($user) ? $user['birthday'] : "") ?>" />
                        <label>Số điện thoại</label></br>
                        <input type="text" name="phone" value="<?= (!empty($user) ? $user['phone'] : "") ?>" />
                        <label>Địa chỉ</label></br>
                        <input type="text" name="address" value="<?= (!empty($user) ? $user['address'] : "") ?>" />

                        <select name="status">
                            <option <?php if (!empty($user['status'])) { ?> selected <?php } ?> value="1">Kích hoạt</option>
                            <option <?php if (empty($user['status'])) { ?> selected <?php } ?>  value="0">Block</option>
                        </select>
                        <br><br>
                        <input class="btn-success" style="padding: 10px" type="submit" value=" Chỉnh sửa " />
                    </form>
                </div>
            <?php
            }
        }
        ?>
    
    </div> <!-- end container  -->
       
    <?php } ?>   <!-- end else -->
    </body>
</html>
