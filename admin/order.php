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

    $config_name = "order";
    $config_title = "ĐƠN HÀNG   ";

        if(!empty($_GET['action']) && $_GET['action'] == 'search' && !empty($_POST)){
            $_SESSION[$config_name.'_filter'] = $_POST;
            // header('Location: '.$config_name.'.php');
        }
        if(!empty($_SESSION[$config_name.'_filter'])){
            $where = "";
            foreach ($_SESSION[$config_name.'_filter'] as $field => $value) {
                if(!empty($value)){
                    switch ($field) {
                        case 'fullname':
                        $where .= (!empty($where))? " AND "."`".$field."` LIKE '%".$value."%'" : "`".$field."` LIKE '%".$value."%'";
                        break;
                        default:
                        $where .= (!empty($where))? " AND "."`".$field."` = ".$value."": "`".$field."` = ".$value."";
                        break;
                    }
                }
            }
            // var_dump($where);exit;
            extract($_SESSION[$config_name.'_filter']);
        }
        $item_per_page = (!empty($_GET['per_page'])) ? $_GET['per_page'] : 10;
        $current_page = (!empty($_GET['page'])) ? $_GET['page'] : 1;
        $offset = ($current_page - 1) * $item_per_page;
        if(!empty($where)){
            $totalRecords = mysqli_query($con, "SELECT * FROM `orders` where (".$where.")");
        }else{
            $totalRecords = mysqli_query($con, "SELECT * FROM `orders`");
        }
        $totalRecords = $totalRecords->num_rows;
        $totalPages = ceil($totalRecords / $item_per_page);
        if(!empty($where)){
            $orders = mysqli_query($con, "SELECT * FROM `orders` where (".$where.") ORDER BY `id` DESC LIMIT " . $item_per_page . " OFFSET " . $offset);
        }else{
            $orders = mysqli_query($con, "SELECT * FROM `orders` ORDER BY `id` DESC LIMIT " . $item_per_page . " OFFSET " . $offset);
        }
        mysqli_close($con);
    ?>




            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <p style="text-align:center;padding: 5px"><b>DANH SÁCH <?= $config_title ?></b></p>
                        <div class="row">
                            <div class="col-md-12" style="margin-bottom:10px">
                                <form id="<?= $config_name ?>-search-form" action="<?= $config_name ?>.php?action=search" method="POST">
                                    <fieldset>
                                        ID: <input type="text" name="id" value="<?= !empty($id) ? $id : "" ?>" />
                                        Tên người nhận: <input type="text" name="fullname" value="<?= !empty($name) ? $name : "" ?>" />
                                        <input type="submit" value="Tìm" />
                                    </fieldset>
                                </form>
                                <select name="sort" id="sort" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                                    <option value="" hidden selected>Sắp xếp theo</option>
                                    <!-- selected: thuoc tinh html khi click vao thi the do van hien thi value do  -->
                                    <option>Trong tuần này</option>
                                    <!-- Neu TON TAI sortParam(1 str khac cua search) thi se KET HOP ca dk search va order -->
                                    <option>Trong tháng này</option>
                                    <option >Trong quý này</option>
                                     <!-- Neu TON TAI sortParam(1 str khac cua search) thi se KET HOP ca dk search va order -->
 
                                </select> 
                            </div>
                                

                            <div class="col-md-12">
                    
                                 <!-- DATA TABLE -->
                                <div class="table-responsive table-responsive-data2">
                            <?php
                            include './pagination.php';
                            ?>
                                    <table class="table table-data2" style="margin-top:5px;">
                                        <thead style="background-color:#444;color:#f4f4f4">
                                            <tr>
                                                <th style="color:#f4f4f4;">ID</th>
                                                <th style="color:#f4f4f4;">Tài khoản</th>
                                                <th style="color:#f4f4f4;">Địa chỉ nhận hàng</th>
                                                <th style="color:#f4f4f4;">Số điện thoại</th>
                                                <th style="color:#f4f4f4;">Ngày tạo</th>
                                                <th style="color:#f4f4f4;">Tổng tiền</th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                <?php  while ($row = mysqli_fetch_array($orders)) { ?>                                    
                                        <tbody>
                                            <tr class="tr-shadow">
                                                <td><?=$row['id']?></td>
                                                <td><?=$row['fullname']?></td>
                                                <td ><?=$row['address']?></td>
                                                <td><?=$row['phone']?></td>
                                                <td><?=date('d/m/Y H:i', $row['created_date'])?></td>
                                                <td><?= number_format($row['total'], 0, ",", ".")?></td>
                                                <td><a class="fa fa-print" href="order_printing.php?id=<?=$row['id']?>" target="_blank"></a></td>
                                                <td><a class="fa fa-trash" href="order_delete.php?id=<?=$row['id']?>"></a></td>
                                            </tr><tr class="spacer"></tr>
                                        </tbody> 
                                 <?php  } ?>
                                    </table><!-- end table -->
                                </div>
                                <!-- END DATA TABLE -->
                            <?php
                            include './pagination.php';
                            ?>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                                </div>
                            </div>
                        </div>
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

    <!-- Main JS-->
    <script src="js/main.js"></script>

         
    <?php } ?>   <!-- end else -->


</body>

</html>
<!-- end document-->
