<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<?php 
    include 'header.php';
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
        <h1> <?= $currentUser['first_name']." ".$currentUser['last_name']?> </h1>
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

            <div class="tab-content">
                <div class="tab-pane active" id="home">
                    <hr>
                      <?php
                        $error = false;
                        if (isset($_GET['action']) && $_GET['action'] == 'edit'){
                            if (isset($_POST['password']) && isset($_POST['password2']) && ($_POST['password'] == $_POST['password2'])){
                              $result = mysqli_query($con, "UPDATE `customers` SET 
                                `password` = '" . $_POST['password'] ."',
                                `last_updated`=" . time() . " WHERE `customers`.`id` = " . $_POST['id'] . ";");
                                ?>
                                <div class="content-container">
                                  <div id="edit-notify" class="box-content">
                                      <h1>Đổi mật khẩu thành công</h1>
                                  </div>
                                </div>
                            <?php
                            }else {
                              ?>
                              <div class="content-container">
                                <div id="edit-notify" class="box-content">
                                    <h1>Mật khẩu không trùng khớp</h1>
                                    <a class="link-button" href="uif_passedit.php">Reset</a>
                                  </div>
                              </div>
                            <?php
                            }
                        }else{
                          ?>
                          <form action="./uif_passedit.php?action=edit" method="Post" enctype="multipart/form-data"
                              autocomplete="off" id="registrationForm">

                              <div class="input-block">
                                  <input type="hidden" name="id" value="<?= $user['id'] ?>" />
                            </div>

                              <div class="form-group">
                                  <div class="col-xs-9">
                                      <label for="password">
                                          <h4>Password</h4>
                                      </label>
                                      <input type="password" class="form-control" name="password" id="password"
                                          placeholder="Nhập mật khẩu" title="enter your password.">
                                  </div>
                              </div>

                              <div class="form-group">
                                  <div class="col-xs-9">
                                      <label for="password2">
                                          <h4>Verify</h4>
                                      </label>
                                      <input type="password" class="form-control" name="password2" id="password2"
                                          placeholder="Nhập lại mật khẩu" title="enter your password2.">
                                  </div>
                              </div>

                              <div class="form-group">
                                  <div class="col-xs-12">
                                      <br>
                                      <button class="btn btn-lg btn-success" type="submit"><i
                                              class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                  </div>
                              </div>
                          </form>
                        <?php
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























<!--     
    <form action="./uif_passedit.php?action=edit" method="Post" enctype="multipart/form-data"autocomplete="off" id="registrationForm">
                            
      <div class="input-block">
            <input type="hidden" name="id" value="<?= $user['id'] ?>" />
      </div>

      <div class="form-group">
          <div class="col-xs-12">
              <br>
              <button class="btn btn-lg btn-success" type="submit">
                <i class="glyphicon glyphicon-ok-sign"></i> Lưu lại </button>
          </div>
      </div>
    </form> -->