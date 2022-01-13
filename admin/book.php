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
    
        // $books = mysqli_query($con, "SELECT books.* FROM `books`  ORDER BY `id` ASC " );

            //      PHÂN TRANG

    if(!empty($_GET['action']) && $_GET['action'] == 'search' && !empty($_POST)){//  Neu co action GET co ten la search
        $_SESSION['book_filter'] = $_POST;      // khai bao session  'book filter' = $_POST => Khi quay ve trang chinh thi van luu lai session
        // var_dump($_SESSION['book_filter']);exit;
        
    }
    if(!empty($_SESSION['book_filter'])){ // Neu ton tai phien co phan tu book_filter
        $where = "";
        foreach ($_SESSION['book_filter'] as $field => $value) { // gan field = key
            if(!empty($value)){
                switch ($field) {
                    case 'tittle':
                        $where .= (!empty($where))? " AND "."`".$field."` LIKE '%".$value."%'" : "`".$field."` LIKE '%".$value."%'"; // neu rong thi luu luon chuoi, neu ko thi them AND
                    break;
                    default:
                        $where .= (!empty($where))? " AND "."`".$field."` = ".$value."": "`".$field."` = ".$value."";
                    break;
                }
            }
        }
        // var_dump($where);exit;
        extract($_SESSION['book_filter']);
    }

    $item_per_page = (!empty($_GET['per_page'])) ? $_GET['per_page'] : 8;
    $current_page = (!empty($_GET['page'])) ? $_GET['page'] : 1;
    $offset = ($current_page - 1) * $item_per_page;
    if(!empty($where)){ // Tinh toan lai tong so san pham khi co filter
        $totalRecords = mysqli_query($con, "SELECT * FROM `books` where (".$where.")");
    }else{
        $totalRecords = mysqli_query($con, "SELECT * FROM `books`");
    }
    $totalRecords = $totalRecords->num_rows;
    $totalPages = ceil($totalRecords / $item_per_page);
    if(!empty($where)){ // neu ton tai where - tuc la dang filter thi su dung ham nay
        $books_filter = mysqli_query($con, "SELECT * FROM `books` where (".$where.") ORDER BY `id` DESC LIMIT " . $item_per_page . " OFFSET " . $offset);
    }else{  // neu ko thi phan trang binh thuong
        $books_filter = mysqli_query($con, "SELECT * FROM `books` ORDER BY `id` ASC LIMIT " . $item_per_page . " OFFSET " . $offset);
    }
  
    ?>
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                               

                                <!-- Filter -->
                                <h3 class="title-5 m-b-35">Danh sách sản phẩm</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                        <div class="rs-select2--light rs-select2--sm">
                                            <select class="js-select2" name="time">
                                                <option selected="selected">Today</option>
                                                <option value="">3 Days</option>
                                                <option value="">1 Week</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                    
                                    <div class="table-data__tool-center">
                                    <form id="book-search-form" action="book.php?action=search" method="POST">
                                    <fieldset>
                                    ID: <input style="width: 160px;border: 1px solid rgba(0,0,0,.1);" type="text" name="id" value="<?=!empty($id)?$id:""?>" />
                                    Tên sản phẩm: <input style="width: 160px;border: 1px solid rgba(0,0,0,.1);" type="text" name="tittle" value="<?=!empty($tittle)?$tittle:""?>" />
                                    <input  type="submit" value="Tìm" />
                                    </fieldset>
                                    </form>
                                    </div>

                                    <div class="table-data__tool-right">
                                        <a href="book_handle.php" class="au-btn au-btn-icon au-btn--green au-btn--small">
                                            <i class="zmdi zmdi-plus"></i> Thêm sản phẩm
                                        </a>
                                        <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                            <select class="js-select2" name="type">
                                                <option selected="selected">Export</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div><!-- end filter -->

                                 <!-- DATA TABLE -->
                                <div class="table-responsive table-responsive-data2">
                            <?php
                            include './pagination.php';
                            ?>
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>Tên</th>
                                                <th>Ảnh</th>
                                                <th>Tác giả</th>
                                                <th>Cập nhật lần cuối</th>
                                                <th>Số lượng</th>
                                                <th>
                                                    <div class="row">Giá hiện tại</div>
                                                    <div class="row">( Giá gốc )</div>
                                                </th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                    
                                    <?php
                                    while ($row = mysqli_fetch_array($books_filter) ) {
                                        // đặt biến $row_id để sau này gọi trong mysqli không bị lỗi
                                        $row_id = $row['id'];
                                        // var_dump($row_id);exit;
                                    ?>
                                        <tbody>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td><?=$row['tittle']?></td>
                                                <td>
                                                    <img style="width: 60px;height: 80px;" src="../<?= $row['image'] ?>" alt="<?= $row['tittle'] ?>" title="<?= $row['tittle']?>">
                                                </td>
                                                
                                                <td class="desc">
                                        <?php
                                        $author = mysqli_query($con, "SELECT authors.first_name,authors.last_name
                                                                    FROM `books_authors`  INNER JOIN `authors` ON books_authors.author_id = authors.id
                                                                                        INNER JOIN `books` ON books_authors.book_id = books.id
                                                                    WHERE `books_authors`.`book_id` = $row_id                    
                                                                                  ");  
                                        while ($row2 = mysqli_fetch_array($author)){ ?>
                                            <a href="" style="font-size: 0.8rem;"><?= $row2['first_name']." ".$row2['last_name'].","?></a>
                                        <?php } ?>

                                                </td>
                                                
                                                <td><?= $row['last_updated'] ?></td>
                                                <td>
                                                    <?php if ($row['quantity'] > 0) { ?>
                                                    <span class="status--process"><?=$row['quantity']?></span>
                                                    <?php } else { ?>
                                                    <span class="status--denied">Hết hàng</span>
                                                    <?php } ?>
                                                </td>
                                                <td>
                                                    <div class="row"><?= number_format($row['price'], 0, ",", ".")?> đ</div> 
                                                    <div class="row">( <?= number_format($row['import_price'], 0, ",", ".")?> )</div> 
                                                </td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <a href="./book_handle.php?id=<?= $row['id'] ?>&task=copy&task=copy" class="item" data-toggle="tooltip" data-placement="top" title="Copy">
                                                            <i class="zmdi zmdi-copy"></i>
                                                        </a>
                                                        <a href="./book_handle.php?id=<?= $row['id'] ?>" class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </a>
                                                        <a href="./book_delete.php?id=<?= $row['id'] ?>" class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </a>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                              
                                            
                                        </tbody> 
                                    <?php } ?>
                                    </table><!-- end table -->
                            <?php
                            include './pagination.php';
                            ?>
                                </div>
                                <!-- END DATA TABLE -->

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

         
    <?php }  ?>   <!-- end else -->

</body>

</html>
<!-- end document-->
