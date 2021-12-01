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

    <?php
        include '../connect_db.php';
        $result = mysqli_query($con, "SELECT * FROM users");
        mysqli_close($con);
        ?>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            #user-info{
                border: 1px solid #ccc;
                width: 960px;
                margin: 0 auto;
                padding: 25px;
            }
            #user-info table{
                margin: 10px auto 0 auto;
                text-align: center;
            }
            #user-info h1{
                text-align: center;
            }
        </style>


            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                                <div id="user-info">
                                    <h1>Danh sách tài khoản</h1>
                                    <a class="fa fa-user-plus" href="./user_create.php">Tạo tài khoản mới</a>
                                    <table id = "user-listing" style="width: 700px;">
                                        <tr>
                                            <td>Tài khoản</td>
                                            <td>Họ và tên đầy đủ</td>
                                            <td>Ngày sinh</td>
                                            <td>Số điện thoại</td>
                                            <td>Địa chỉ</td>
                                            <td>Trạng thái</td>
                                            <td class="text-right">Cập nhật lần cuối</td>
                                            <td class="text-right">Ngày tạo tài khoản</td>
                                            <td>Sửa</td>
                                            <td>Xóa</td>
                                        </tr>
                                        <?php
                                        while ($row = mysqli_fetch_array($result)) {
                                            ?>
                                            <tr>
                                                <td><?= $row['username'] ?></td>
                                                <td><?= $row['fullname'] ?></td>
                                                <td><?= date('d/m/Y H:i', $row['birthday']) ?></td>
                                                <td><?= $row['phone'] ?></td>
                                                <td><?= $row['address'] ?></td>
                                                <td><?= $row['status'] == 1 ? 'Kich hoat' : 'Vo hieu hoa'   ?></td>
                                                <td><?= date('d/m/Y H:i', $row['last_updated']) ?></td>
                                                <td><?= date('d/m/Y H:i', $row['created_time']) ?></td>
                                                <td><a class="fa fa-edit" href="./user_edit.php?id=<?= $row['id'] ?>"></a></td>
                                                <td><a class="fa fa-trash"href="./user_delete.php?id=<?= $row['id'] ?>"></a></td>
                                            </tr>
                                        <?php } ?>
                                    </table>
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
        </div><!-- end container -->
                                                
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
