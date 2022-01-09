
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
<style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>

<!-- <hr> -->
<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-4">
        <div class="text-center">  
            <h1> <?= $currentUser['first_name']." ".$currentUser['last_name']?> </h1>
        </div>
      </div>
    </div>
    <!-- row -->
      
    <div class="row">
  		<div class="col-sm-4"><!--left col-->
        <div class="text-center">
          <img src="<?= $currentUser['avatar'] ?>" class="avatar img-circle img-thumbnail" alt="avatar" style="width:200px;height:200px;">
        </div>

        <br>
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
            	<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
            </div>
          </div>
        </div><!--/col-4-->
    	<div class="col-sm-8">
            <ul class="nav nav-tabs">
                <!-- <li class="active"><a data-toggle="tab" href="user_profile.php">Thông tin</a></li> -->
                <li><a href="uif_profile.php">Cập nhật Thông tin</a></li>
                <li><a href="uif_passedit.php" >Đổi mật khẩu </a></li>
                <li style = "background-color :#ddd"><a href="uif_favorite.php" >Yêu thích</a></li>
                <li><a href="uif_orderhis.php" >Lịch sử mua hàng</a></li>
            </ul>
        <!-- <hr> -->

        <?php 
          $user = $currentUser;
          $userid = $user['id'];

          $result = mysqli_query($con, "SELECT tittle, image, price FROM  books 
          INNER JOIN favorites ON books.id = favorites.book_id WHERE customer_id= $userid" );
          // var_dump($result);exit;
          $num_record = mysqli_num_rows($result);
          // echo "Số sách yêu thích : ". $num_record . "<br>";

          ?>
          <table class="table table-borderless table-striped table-earning">
            <tr>
              <td style="text-align: center">
                Tên sách
              </td>
              <td style="text-align: center">Ảnh</td>
              <td style="text-align: center">Giá</td>
              <td style="text-align: center">Xóa</td>
            </tr>

            <?php
            while ($row = mysqli_fetch_array($result)) {
              ?>
                <tr>
                  <td>
                    <?= $row['tittle'] ?>
                </td>
                  
                  <td>
                  <img style="width: 80px;height: 100px;"
                    src="./<?= $row['image'] ?>" alt="<?= $row['tittle'] ?>" title="<?= $row['tittle']?>" >
                  </td>
                  <td style="text-align: center"><?= $row['price'] ?></td>
                  <td style="text-align: center"><a class="fa fa-trash" href="./uif_favor_del?id=<?= $row['id'] ?>" style="color:crimson"></a></td>
                    
                </tr>
            <?php } ?>
          </table>
      </div><!--/col-8-->
    </div><!--/row-->
    
