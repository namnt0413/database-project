<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<?php 
    include 'header.php';
    $user_id = $currentUser['id'];
    // var_dump($user_id);exit;

    $result = mysqli_query($con, "SELECT * FROM `customers` WHERE `id` = $user_id ");
    // var_dump( $result );exit;
    if (!$result) {
        $error = mysqli_error($con);
    } else {
        $user = mysqli_fetch_assoc($result);
        $_SESSION['current_user'] = $user;
    }
    // var_dump($user);exit;
    $currentUser = $_SESSION['current_user'];
    // var_dump($currentUser);exit;

?>

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<hr>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-sm-10">
                <h1> <?= $currentUser['first_name']." ".$currentUser['last_name']?> </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-3">

                <?php
                if (isset($_GET['action']) && $_GET['action'] == 'pic'){
                    ?>
                    <h2>xử lí</h2>   
                    <!-- in kiểm tra -->
                    <?php
                    $uploadedFiles = $_FILES['avatar']; // uploadFile get duoc anh 
                    if (isset($_FILES['avatar']) && !empty($_FILES['avatar']['name'][0])) { // Dieu Kien cua thu vien anh
                        $uppic = uploadAvatarFiles($uploadedFiles);  // upload file anh len(TV upload anh)
                        if (!empty($uppic['errors'])) { // neu co loi
                            $error = $uppic['errors'];
                        } else {
                                $avatar = $uppic['path'];
                        }
                    }
                    var_dump($avatar);
                    $picid = $user['id'];
                    $result = mysqli_query($con, "UPDATE `customers` SET
                    `avatar` =  '" . $avatar . "' 
                    WHERE `customers`.`id` = " . $picid . ";");
                    ?>
                        <img src="<?= $user['avatar'] ?>" class="avatar img-circle img-thumbnail" alt="avatar">
                        <!-- in thử ảnh ra và nút back  -->
                        <a class="button" href="uif_profile.php">Quay lại</a>
                <?php
                }else{
                    
                    ?>
                    <form action="./uif_profile.php?action=pic" method="Post" enctype="multipart/form-data" autocomplete="off"> 
                        <div class="input-block">
                                <input type="hidden" name="id" value="<?= $user['id'] ?>" />
                        </div>

                        <?php 
                            if (isset($user['avatar'])) { 
                                ?>  <!-- Neu co anh dai dien  -->
                                <br/>
                                <h2>có ảnh</h2>
                                <?php var_dump($user['avatar']);?>

                                <img src="<?= $user['avatar'] ?>" class="avatar img-circle img-thumbnail" alt="avatar">
                                <input type="file" name="avatar"/><br>
                            <?php   
                            } else { 
                                ?>
                                <h2>không có ảnh</h2>
                                <img src="../assets/image/user/user.png"  class="avatar img-circle img-thumbnail" alt="avatar">
                                <br>
                                <input type="file" name="avatar" /><br>      <!-- nut choosen file-->
                                <br></br>
                            <?php 
                            }
                            ?>
                            <!-- submit -->
                            <div class="form-group">
                                <div class="col-xs-3">
                                    <button class="btn btn-lg btn-success" type="submit">
                                    <i class="glyphicon glyphicon-ok-sign"></i> Lưu ảnh</button>
                                </div>
                            </div>
                    </form>
                <?php
                }
                ?>

</hr><br></br><br></br>


            <div class="panel panel-default">
                <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
                <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
            </div>


            <ul class="list-group">
                <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
            </ul>

            <div class="panel panel-default">
                <div class="panel-heading">Social Media</div>
                <div class="panel-body">
                    <i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i
                        class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i
                        class="fa fa-google-plus fa-2x"></i>
                </div>
            </div>

        </div>
        <!--/col-3-->
        <div class="col-sm-9">
            <ul class="nav nav-tabs">
                <!-- <li class="active"><a data-toggle="tab" href="user_profile.php">Thông tin</a></li> -->
                <li><a href="uif_profile.php">Cập nhật Thông tin</a></li>
                <li><a href="uif_passedit.php">Đổi mật khẩu </a></li>
                <li><a href="uif_favorite.php">Yêu thích</a></li>
                <li><a href="uif_orderhis.php">Lịch sử mua hàng</a></li>

            </ul>

          <?php 
            $user = $currentUser;
          ?>
            <div class="tab-content">
                <div class="tab-pane active" id="home">
                    <hr>
                    <?php 
                    $error = false;
                    if (isset($_GET['action']) && $_GET['action'] == 'edit') 
                    {
                        if (isset($_POST['id']) && $_POST['id'] == $user['id']) {
                        
                          $birthday = $_POST['birthday'];

                          $check = validateDateTime($birthday);
                          if ($check) {
                              $birthday = strtotime($birthday);
                          }

                          // upload anh dai dien
                          // $uploadedFiles = $_FILES['avatar']; // uploadFile get duoc anh 
                          // if (isset($_FILES['avatar']) && !empty($_FILES['avatar']['name'][0])) { // Dieu Kien cua thu vien anh
                          //     $result = uploadAvatarFiles($uploadedFiles);  // upload file anh len(TV upload anh)
                          //     if (!empty($result['errors'])) { // neu co loi
                          //         $error = $result['errors'];
                          //     } else {
                          //         $avatar = $result['path'];
                          //     }
                          // }
                              
                          $result = mysqli_query($con, "UPDATE `customers` SET 
                            `first_name` = '" . $_POST['first_name'] ."',
                            `last_name` = '" . $_POST['last_name'] ."' , 
                            `birthday` = " . $birthday ." ,
                            `phone` = '" . $_POST['phone'] ."' , 
                            `address` = '" . $_POST['address'] ."' ,
                            `email` = '" . $_POST['email'] . "'
                             WHERE `customers`.`id` = " . $_POST['id'] . ";");
                          
                          if (!$result) {
                              $error = "Không thể cập nhật tài khoản";
                          }
                          mysqli_close($con);
                          if ($error !== false) 
                          {
                              ?>
                              <div id="error-notify" class="box-content">
                                  <h1>Thông báo</h1>
                                  <h4><?= $error ?></h4>
                              </div>
                          <?php 
                          } else { 
                              ?>
                              <div class="content-container">
                                  <div id="edit-notify" class="box-content">
                                      <h1><?= ($error !== false) ? $error : "Sửa tài khoản thành công" ?></h1>
                                  </div>
                              </div>
                          <?php 
                          }
                        } else { 
                            ?>
                            <div class="content-container">
                                <div id="edit-notify" class="box-content">
                                    <h1>Vui lòng nhập đủ thông tin để sửa tài khoản</h1>
                                    <a class="button" href="uif_profile.php?id=<?= $_POST['id'] ?>">Quay lại sửa tài khoản</a>
                                </div>
                            </div>
                        <?php
                        }
                    } else {

                        if (!empty($user)) {
                          ?>
                          <form action="./uif_profile.php?action=edit" method="Post" enctype="multipart/form-data"autocomplete="off" id="registrationForm">
                            
                            <div class="input-block">
                                  <input type="hidden" name="id" value="<?= $user['id'] ?>" />
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="first_name">
                                        <h4>Họ tên đệm</h4>
                                    </label>
                                    <input type="text" class="form-control" name="first_name" id="first_name"
                                    value="<?= (!empty($user) ? $user['first_name'] : "") ?>" title="enter your first name if any.">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="last_name">
                                        <h4>Tên</h4>
                                    </label>
                                    <input type="text" class="form-control" name="last_name" id="last_name"
                                    value="<?= (!empty($user) ? $user['last_name'] : "") ?>" title="enter your last name if any.">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="phone">
                                        <h4>Điện thoại</h4>
                                    </label>
                                    <input type="text" class="form-control" name="phone" id="phone"
                                    value="<?= (!empty($user) ? $user['phone'] : "") ?>" title="enter your phone number if any.">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="birthday">
                                        <h4>Ngày sinh</h4>
                                    </label>
                                    <input type="date" class="form-control" name="birthday" id="birthday"
                                    value="<?= date('Y-m-d', $user['birthday']) ?>" title="enter your mobile number if any.">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email">
                                        <h4>Email</h4>
                                    </label>
                                    <input type="email" class="form-control" name="email" id="email"
                                    value="<?= (!empty($user) ? $user['email'] : "") ?>" title="enter your email.">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="address">
                                        <h4>Địa chỉ</h4>
                                    </label>
                                    <input type="text" class="form-control" name="address" id="address"
                                    value="<?= (!empty($user) ? $user['address'] : "") ?>" title="enter a location">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-lg btn-success" type="submit">
                                      <i class="glyphicon glyphicon-ok-sign"></i> Lưu lại </button>
                                </div>
                            </div>
                          </form>

                        <?php
                        }
                    }
                      ?>
                    <hr>

                </div>
                <!--/tab-pane-->
            </div>
            <!--/tab-content-->
              
        </div>
        <!--/col-9-->
    </div>
    <!--/row-->
          
          
            
            
            
            
            
            
            
            
            <!-- <form action="./uif_profile.php?action=edit" method="Post" enctype="multipart/form-data"autocomplete="off" id="registrationForm">
                <div class="form-group">

                    <div class="col-xs-6">
                        <label for="first_name">
                            <h4>Họ tên đệm</h4>
                        </label>
                        <input type="text" class="form-control" name="first_name" id="first_name"
                            placeholder="<?= $user['first_name'] ?>" title="enter your first name if any.">
                    </div>

                </div>
                <div class="form-group">

                    <div class="col-xs-6">
                        <label for="last_name">
                            <h4>Tên</h4>
                        </label>
                        <input type="text" class="form-control" name="last_name" id="last_name"
                            placeholder="<?= $user['last_name'] ?>" title="enter your last name if any.">
                    </div>
                </div>

                <div class="form-group">

                    <div class="col-xs-6">
                        <label for="phone">
                            <h4>Điện thoại</h4>
                        </label>
                        <input type="text" class="form-control" name="phone" id="phone"
                            placeholder="<?= $user['phone'] ?>" title="enter your phone number if any.">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-6">
                        <label for="birthday">
                            <h4>Ngày sinh</h4>
                        </label>
                        <input type="text" class="form-control" name="birthday" id="birthday"
                            placeholder="<?= $user['birthday'] ?>" title="enter your mobile number if any.">
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-xs-6">
                        <label for="email">
                            <h4>Email</h4>
                        </label>
                        <input type="email" class="form-control" name="email" id="email"
                            placeholder="you@email.com" title="enter your email.">
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-xs-6">
                        <label for="address">
                            <h4>Địa chỉ</h4>
                        </label>
                        <input type="text" class="form-control" id="address"
                            placeholder="<?= $user['address'] ?>" title="enter a location">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-12">
                        <br>
                        <br><br>
                        <input class="button btn-success" type="submit" value=" Chỉnh sửa " />
                        <button class="btn btn-lg btn-success" type="submit"><i
                                class="glyphicon glyphicon-ok-sign"></i> Save</button>
                        <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i>
                            Reset</button>
                    </div>
                </div>
            </form> -->











                            
