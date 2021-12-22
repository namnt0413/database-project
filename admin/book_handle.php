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

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
            <?php
// Neu phuong thuc truyen vao la add(copy) hoac edit : DA THEM SUA ROI        
            //echo ($_GET['id']);exit;
            if (isset($_GET['action']) && ($_GET['action'] == 'add' || $_GET['action'] == 'edit')) {
                //  var_dump($_FILES['image']);exit;
                //  var_dump($_POST);
               if (isset($_POST['tittle']) && !empty($_POST['tittle']) && isset($_POST['price']) && !empty($_POST['price'])) { // ham check xem nhap du thong tin sp chua
                    $galleryImages = array();
                    if (empty($_POST['tittle'])) {
                        $error = "Bạn phải nhập tên sản phẩm";
                    } elseif (empty($_POST['price'])) {
                        $error = "Bạn phải nhập giá sản phẩm";
                    } elseif (!empty($_POST['price']) && is_numeric(str_replace('.', '', $_POST['price'])) == false) {
                        $error = "Giá nhập không hợp lệ";
                    }
                    //upload anh dai dien
                    if (isset($_FILES['image']) && !empty($_FILES['image']['name'][0])) { // Dieu Kien cua thu vien anh
                        $uploadedFiles = $_FILES['image']; // uploadFile get duoc anh 
                        $result = uploadFiles($uploadedFiles);  // upload file anh len(TV upload anh)
                        if (!empty($result['errors'])) { // neu co loi
                            $error = $result['errors'];
                        } else {
                            $image = $result['path'];
                        }
                    }
                    if (!isset($image) && !empty($_POST['image'])) {
                        $image = $_POST['image'];
                    }

                    //khi up load nhieu anh trong thu vien anh , du lieu anh dc luu lai o truong $_FILES['gallery'
                    if (isset($_FILES['gallery']) && !empty($_FILES['gallery']['name'][0])) {
                        $uploadedFiles = $_FILES['gallery'];
                        $result = uploadFiles($uploadedFiles);
                        if (!empty($result['errors'])) {
                            $error = $result['errors'];
                        } else {
                            $galleryImages = $result['uploaded_files'];
                            
                        }
                    }
                    if (!empty($_POST['gallery_image'])) {
                        $galleryImages = array_merge($galleryImages, $_POST['gallery_image']);
                    }

                    // var_dump($image);                     

                    // Cap nhat vao database
                    if (!isset($error)) {
                        if ($_GET['action'] == 'edit' && !empty($_GET['id'])) { 
                            //Cập nhật lại sản phẩm
                            $result = mysqli_query($con, "UPDATE `books` SET `tittle` = '" . $_POST['tittle'] . "', `quantity` = '" . $_POST['quantity'] . "' ,`image` =  '" . $image . "',
                             `price` = " . str_replace('.', '', $_POST['price']) . ", `content` = '" . $_POST['content'] . "', `last_updated` = " . time() . " WHERE `books`.`id` = " . $_GET['id']);
                           $result2 = mysqli_query($con, "UPDATE `books_authors` SET `author_id` = '" . $_POST['author_id'] . "' WHERE `books_authors`.`book_id` = " . $_GET['id']);
                        } else { 
                            //Thêm sản phẩm hoac copy san pham
                            $result = mysqli_query($con, "INSERT INTO `books` (`id`, `tittle` , `quantity` , `image`, `price`, `content`, `created_date`, `last_updated`) 
                            VALUES (NULL, '" . $_POST['tittle'] . "', '" . $_POST['quantity'] . "' , '" . $image . "',
                             '" . str_replace('.', '', $_POST['price']) . "', '" . $_POST['content'] . "', " . time() . ", " . time() . ");");
                            
                            // lay ra id sa'ch lo'n nhat chinh la id cua sach mi`nh vu`a tao 
                            $book_add = mysqli_query($con, "SELECT MAX(id) FROM `books` "); 
                            $book_add_id = $book_add->fetch_assoc();
                            // var_dump($book_add_id['MAX(id)']);var_dump($_POST['author_id']); exit;
                            $result2 = mysqli_query($con, "INSERT INTO `books_authors` (`author_id`,`book_id`)
                            VALUES ('" . $_POST['author_id'] . "',  '" . $book_add_id['MAX(id)'] . "'  )   ") ;
                            // var_dump($result);exit;
                        }

                        if (!$result) { //Nếu có lỗi xảy ra
                            $error = "Có lỗi xảy ra trong quá trình thực hiện.";
                        } else { //Nếu thành công
                            //them link book_id cua thu vien gan voi tung id cua book
                            if (!empty($galleryImages)) {
                                $book_id = ($_GET['action'] == 'edit' && !empty($_GET['id'])) ? $_GET['id'] : $con->insert_id;
                                $insertValues = "";
                                foreach ($galleryImages as $path) {
                                    if (empty($insertValues)) {
                                        $insertValues = "(NULL, " . $book_id . ", '" . $path . "', " . time() . ", " . time() . ")";
                                    } else {
                                        $insertValues .= ",(NULL, " . $book_id . ", '" . $path . "', " . time() . ", " . time() . ")";
                                    }
                                }
                                $result = mysqli_query($con, "INSERT INTO `books_library` (`id`, `book_id`, `path`, `created_time`, `last_updated`) VALUES " . $insertValues . ";");
                            }
                        }
                    }
                } 
                else {
                    $error = "Bạn chưa nhập thông tin sản phẩm.";
                }
                ?>


                <!-- neu cap nhat xongthanh cong -->
                <div class = "container">
                    <div class = "error"><?= isset($error) ? $error : "Cập nhật thành công" ?></div>
                    <a href = "book.php">Quay lại trang quản lý sách</a>
                </div>
            </div><!-- end col-md-12 -->
            <?php
            }   
// Neu khong ton tai 1 phuong thuc nao (chua them or sua,copy) thi render ra giao dien              
            else {     
                if (!empty($_GET['id'])) {      // HAM XU LY LAY VE TUNG ANH TU THU VIEN ANH ( neu co phuong thuc get id )
                    $result = mysqli_query($con, "SELECT books.*,books_authors.author_id 
                    FROM `books_authors` INNER JOIN `books` ON books.id = books_authors.book_id WHERE `id` = " . $_GET['id']);  // lay du lieu tu bang books vs id = $_Get['id]

                    $book = $result->fetch_assoc();  // dua du lieu tu json ve dang array
                    $gallery = mysqli_query($con, "SELECT * FROM `books_library` WHERE `book_id` = " . $_GET['id']); // lay du lieu tu bag image_library
                    if (!empty($gallery) && !empty($gallery->num_rows)) {
                        while ($row = mysqli_fetch_array($gallery)) {   
                            // Tao ta 1 mang gallery moi trong book de luu id va duong dan anh cua thu vien anh sp
                            $book['gallery'][] = array(
                                'id' => $row['id'],
                                'path' => $row['path']
                            );
                        }
                    }
                }
            ?>
                    <div class="row"><a href="book.php" class="fa fa-undo" style="padding: 5px;">  Quay lại</a></div>
                    <form id="book-form" method="POST" action="<?= (!empty($book) && !isset($_GET['task'])) ? "?action=edit&id=" . $_GET['id'] : "?action=add" ?>"  enctype="multipart/form-data">
                          <!-- neu ma sp khong rong va ko co $_GET['task'] thi la edit =>  neu ko co sp nhan ve thi la THEM, neu co task thi la COPY  -->
                        

                            <div class="clear-both"></div>
                            <div class="wrap-field">
                                <label>Tên sách : </label>
                                <!-- Neu TH la sua sp thi co book ko empty -> tra ve book'tittle' -->
                                <input type="text" name="tittle" value="<?= (!empty($book) ? $book['tittle'] : "") ?>" />
                                <div class="clear-both"></div>
                            </div>
                            <div class="wrap-field">
                                <label>Tác giả : </label>
                                <!-- Neu TH la sua sp thi co book ko empty -> tra ve book'tittle' -->
                                <input type="text" name="author_id" value="<?= (!empty($book) ? $book['author_id'] : "") ?>" />
                                <div class="clear-both"></div>
                            </div>
                            <div class="wrap-field">
                                <label>Giá sách: </label>
                                <input type="text" name="price" value="<?= (!empty($book) ? number_format($book['price'], 0, ",", ".") : "") ?>" />
                                <div class="clear-both"></div>
                            </div>
                            <div class="wrap-field">
                                <label>Số lượng hiện có: </label>
                                <input type="text" name="quantity" value="<?= (!empty($book) ? $book['quantity'] : "") ?>" />
                                <div class="clear-both"></div>
                            </div>

                            <div class="wrap-field">
                                <label>Ảnh bìa: </label>
                                <div class="right-wrap-field" style="width:80px;height: 120px;margin-bottom: 40px;">
                                
                            <?php if (!empty($book['image'])) { ?>  <!-- Neu co anh dai dien (copy hoac sua) -->
                                    <img src="../<?= $book['image'] ?>" /><br/>
                                    <input type="hidden" name="image" value="<?= $book['image'] ?>" />
                             <?php   } ?>
                                    <input type="file" name="image" />      <!-- nut choosen file-->
                                </div>
                            <div class="clear-both"></div>
                            </div>

                            <div class="wrap-field">
                                <label>Thư viện ảnh: </label>
                                <div class="right-wrap-field">
                                    <!-- Neu ma co trong thu vien anh sp (copy or sua-->
                                        <?php if (!empty($book['gallery'])) { ?>
                                        <ul style="list-style:none; display:flex">
                        <?php foreach ($book['gallery'] as $image) { ?>
                        <!-- Duyet tung phan tu gallery trong book -->
                                                <li style="width:80px;height: 120px; margin-bottom:35px;margin-right: 15px;">
                                                    <img  src="../<?= $image['path'] ?>"/>
                                                    <a href="book_library_delete.php?id=<?= $image['id'] ?>">Xóa</a>
                                                    <!-- Render ra tung phan tu va nut xoa -->
                                                </li>
                         <?php } ?>
                                        </ul>
                                    <?php } ?>
                            
                        <?php if (isset($_GET['task']) && !empty($book['gallery'])) { ?> <!-- trong TH copy (vi neu tham thi gallery la rong) -->
                                <?php foreach ($book['gallery'] as $image) { ?>
                                    <input type="hidden" name="gallery_image[]" value="<?= $image['path'] ?>" />
                                <?php } ?>
                         <?php } ?>

                                <input multiple="" type="file" name="gallery[]" />  <!-- Nut upload thu vien co okieu multiple -->
                                </div>
                                <div class="clear-both"></div>
                            </div>
                    
                            <div class="wrap-field">
                                <label>Nội dung: </label>
                                <textarea name="content" id="book-content" style="height: 300px;width: -webkit-fill-available;">
                                    <?= (!empty($book) ? $book['content'] : "") ?>
                                </textarea>
                                <div class="clear-both"></div>
                            </div>
                            <div class="row">
                                <input class="save_form" style="background-color: black; color: white;padding: 5px;"  type="submit" title="Lưu" value="Lưu" />
                            </div>
                    </form>
                    <div class="clear-both"></div>
              
                               

                               
                        </div>     <!-- end row  -->
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div><!-- end containẻ fluid -->
                
                </div>  <!-- end section__content section__content--p30-->
            </div>  <!-- end main content -->
        </div> <!-- end page container -->
    <!-- </div> -->

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
         
    <?php } ?>   <!-- end else -->

</body>

</html>
<!-- end document-->