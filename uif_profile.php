<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<?php 
    include 'header.php';
    // var_dump($currentUser);
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

        <!-- <div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div> -->
    </div>
    <div class="row">
        <div class="col-sm-3">
            <!--left col-->

            <div class="text-center">
    
                <img src="<?= $currentUser['avatar'] ?>" class="avatar img-circle img-thumbnail" alt="avatar">
                
                <h6>Upload a different photo...</h6>
                <input type="file" class="text-center center-block file-upload">
            </div>
            </hr><br>


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
            // var_dump($currentUser); 
            $user = $currentUser;
            // var_dump($user);
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
                            `email` = '" . $_POST['email'] . "',
                            `last_updated`=" . time() . " WHERE `customers`.`id` = " . $_POST['id'] . ";");
                          
                          // var_dump($result); exit;
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
                                  <a href="./user.php">Danh sách tài khoản</a>
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
                        mysqli_close($con);
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
                                    <input type="text" class="form-control" name="birthday" id="birthday"
                                    value="<?= (!empty($user) ? $user['birthday'] : "") ?>" title="enter your mobile number if any.">
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











                            
