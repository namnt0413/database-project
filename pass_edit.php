<?php
    include 'header.php';
     ?>
   <body>      
        <?php if (empty($_SESSION['current_user'])) { ?>
            <a href="login.php">Đăng nhập để vào trang Admin</a>
            <?php
         } else {
        // include 'menu_sidebar.php';
        $currentUser = $_SESSION['current_user'];
        // var_dump($current_user); exit;
        ?>

        <!-- PAGE CONTAINER-->
        <div class="page-container">

    <?php 
         
        // include 'admin_navbar.php';
    ?>  
        <style>
            /* .box-content{
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
            } */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
                color: #495057;
            }
            h1 {
                margin-bottom: 2.5rem;
            }
            label {
                margin: 0;
            }
            .content-container {
                margin-top: 5rem;
                position: relative;
                height: 125vh;
                background-image: linear-gradient(#f4f4f4, #7ac187);

                 /* background-image: linear-gradient(rgba(233, 236, 239, 0.603), rgba(233, 236, 239, 0.603));
                 background-image: linear-gradient(rgba(34, 34, 34, 0.603), rgba(34, 34, 34, 0.603)), url(assets/image/login-theme.jpg);
                background-size: cover; */
                /* background-color: #27ae60; */

            }
            .box-content{
                margin: 0 auto;
                width: 600px;
                
                text-align: center;
                padding: 20px;
                box-shadow: 0 20px 30px 0 rgba(0, 0, 0, 0.07);
                border: 1px solid #ccc;
                position: absolute;
                box-shadow: 0 20px 30px 0 rgba(0, 0, 0, 0.07);
               
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background: rgb(256,256,256,0.9);
            }
           
            
            .input-block {
                width: 100%;
                display: flex;
                align-items: center;
                gap: 20px;
                margin-bottom: 30px;
                position: relative;
            }

            .input-area {
                height: 30px;
                width: 350px;
                position: absolute; 
                right: 10px;
                border-radius: 9px;
                border: 1px solid #ccc;
                padding: 5px;
                
            }
            
            .button {
                
                font-size: 17px;
                font-weight: 600;
                background-color: #f59f00;
                color: #fff;
                text-decoration: none;
                cursor: pointer;
                border-radius: 9px;
                border: 0;
                padding: 5px 10px;
                
            }

            .button:hover, .button:active {
                background-color: #f08c00;
            }
            
            .kich-hoat-button {
                padding: 3px 10px;
            }

            .link-button:link, .link-button:visited {
                display: inline-block; 
                text-decoration: none; 
                font-size: 17px;
                font-weight: 600;
                background-color: #f59f00;
                color: #fff;
                text-decoration: none;
                cursor: pointer;
                border-radius: 9px;
                border: 0;
                padding: 5px 10px;
            }

            .link-button:hover, .link-button:active {
                background-color: #f08c00;
            }
        </style>

    <?php 
        //include 'admin_navbar.php';
        $error = false;
        // $a = @_GET['action'];
        // echo $a;
        // exit;
        if (isset($_GET['action']) && $_GET['action'] == 'edit') {
            if (isset($_POST['id']) && !empty($_POST['id']) && isset($_POST['password']) && !empty($_POST['password'])) {
                // var_dump($_POST['password']);exit;
                    $birthday = $_POST['birthday'];
                    $check = validateDateTime($birthday);
                    if ($check) {
                         $birthday = strtotime($birthday);
                    }
                     //upload anh dai dien
                     $uploadedFiles = $_FILES['avatar']; // uploadFile get duoc anh 
                     if (isset($_FILES['avatar']) && !empty($_FILES['avatar']['name'][0])) { // Dieu Kien cua thu vien anh
                        $result = uploadAvatarFiles($uploadedFiles);  // upload file anh len(TV upload anh)
                        if (!empty($result['errors'])) { // neu co loi
                            $error = $result['errors'];
                        } else {
                            $avatar = $result['path'];
                        }
                    }
                    // var_dump($image);    exit;                 


                // CAP NHAT VAO DATABASE
                $result = mysqli_query($con, "UPDATE `customers` SET `password` = MD5('" . $_POST['password'] . "'), 
                `first_name` = '" . $_POST['first_name'] ."',
                `last_name` = '" . $_POST['last_name'] ."' , 
                `last_updated`=" . time() . " WHERE `customers`.`id` = " . $_POST['id'] . ";");
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
                    <div class="content-container">
                        <div id="edit-notify" class="box-content">
                            <h1><?= ($error !== false) ? $error : "Sửa tài khoản thành công" ?></h1>
                            <a class="link-button" href="./user.php">Danh sách tài khoản</a>
                        </div>
                    </div>
                <?php } ?>
            <?php } else { ?>
                <div class="content-container">
                    <div id="edit-notify" class="box-content">
                        <h1>Vui lòng nhập đủ thông tin để sửa tài khoản</h1>
                        <a class="button" href="./user_edit.php?id=<?= $_POST['id'] ?>">Quay lại sửa tài khoản</a>
                    </div>
                </div>
            <?php
            }
        } else {
            //select p tu co id can sua
            // var_dump($currentUser);exit;
            $user_id = $currentUser['id'];
            $result = mysqli_query($con, "SELECT * FROM `customers` where `id`=" '$user_id';
            //lay ra toan bo gia tri cua phan tu co id do
            $user = $result->fetch_assoc();
            mysqli_close($con);
            if (!empty($user)) {
                ?>
                <div class="content-container">
                    <div id="edit_user" class="box-content">
                        <div class="row"><a href="user.php" class="fa fa-undo" style="padding: 5px;">  Quay lại</a></div>
                        <h1>Sửa tài khoản "<?= $user['username'] ?>"</h1>
                        <form action="./pass_edit.php?action=edit" method="Post" enctype="multipart/form-data" autocomplete="off">  
                            <div class="wrao-feild" style="margin-bottom:30px">
                                <!-- <div class="right-wrap-field" style="width:80px;height: 120px;margin-bottom: 40px;"> -->
                                <?php if (isset($user['avatar'])) { ?>  <!-- Neu co anh dai dien  -->
                                        <img src="../<?= $user['avatar'] ?>" style="width: 200px;height: 200px;border-radius:100%;" /><br/>
                                        <input type="file" name="avatar"/><br>
                                 <?php   } else { ?>
                                    <img src="../assets/image/user/user.png" style="width: 200px;height: 200px;border-radius:100%;"><br>
                                    <input type="file" name="avatar" /><br>      <!-- nut choosen file-->
                                <?php } ?>
                                <!-- </div> -->
                            </div>                    

                            <div class="input-block">
                                <label>Mật khẩu mới</label></br>
                                <input type="hidden" name="id" value="<?= $user['id'] ?>" />
                                <input class="input-area" type="password" name="password" value="" />
                            </div>
                            <div class="input-block">
                                <label>Họ và tên đệm</label></br>
                        
                                <input class="input-area" type="text" name="first_name" value="<?= (!empty($user) ? $user['first_name'] : "") ?>" />
                            </div>
                            <div class="input-block">
                                <label>Tên</label></br>
                                <input class="input-area" type="text" name="last_name" value="<?= (!empty($user) ? $user['last_name'] : "") ?>" />
                            </div>
                            <div class="input-block">
                                <label>Ngày tháng năm sinh</label></br>
                                <input class="input-area" type="text" name="birthday" value="<?= (!empty($user) ? $user['birthday'] : "") ?>" />
                            </div>
                            <div class="input-block">
                                <label>Số điện thoại</label></br>
                                <input class="input-area" type="text" name="phone" value="<?= (!empty($user) ? $user['phone'] : "") ?>" />
                            </div>
                            <div class="input-block">
                                <label>Địa chỉ</label></br>
                                <input class="input-area" type="text" name="address" value="<?= (!empty($user) ? $user['address'] : "") ?>" />
                            </div>
                            <div class="input-block">
                                <label>Email</label></br>
                                <input class="input-area" type="text" name="email" value="<?= (!empty($user) ? $user['email'] : "") ?>" />
                            </div>
                            <div class="input-block">
                                <label>Tổng số tiền đã mua</label></br>
                                <input class="input-area" type="text" name="money_spent" value="<?= (!empty($user) ?  $user['money_spent'] : "") ?>" />
                            </div>
                            <select class="kich-hoat-button" name="status">
                                <option <?php if (!empty($user['status'])) { ?> selected <?php } ?> value="1">Kích hoạt</option>
                                <option <?php if (empty($user['status'])) { ?> selected <?php } ?>  value="0">Block</option>
                            </select>
                            <br><br>
                            <input class="button btn-success"  type="submit" value=" Chỉnh sửa " />
                        </form>
                    </div>
                </div>
            <?php
            }
        }
        ?>
    
    </div> <!-- end container  -->
       
    <?php } ?>   <!-- end else -->
    </body>
</html>
