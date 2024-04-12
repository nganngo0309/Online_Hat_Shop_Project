<section>
    <div class="row">
        <div class="col-lg-12 text-left">
            <h3 class="" style="font-size:50px;margin-top:50px">DETAILS<b style="color:red">PRODUCTS</b></h3><br><br><br>
        </div>

    </div>
    <div style="position:fixed;margin-left:570px;margin-top:-280px">
        <a class="" href="index.php?action=giohang" style="  
  margin-bottom: 0px;margin-left: 650px;margin-bottom:px"><img src="Content/img/c1.png" style="border-radius:50%;
                -moz-border-radius:40%;-webkit-border-radius:40%;width:10%"></a>
        <?php
        if (isset($_SESSION['cart'])) {
            $dem = count($_SESSION['cart']);
        } else {
            $dem = 0;
        }
        ?>
        <h1 style="color: red; margin-top: -100px; margin-left: 725px;"><b><?php echo "" . $dem . ""; ?></b></h1>
    </div>
    <article class="col-12">
        <!-- <div class="card"> -->
        <div class="container-fliud">
            <div class="wrapper row">
                <form action="index.php?action=giohang&act=add_cart" method="post">
                    <!-- <input type="hidden" name="action" value="giohang&add_cart"/> -->

                    <div class="preview col-md-8">
                        <div class="tab-content" style="width:600px; height:700px">
                            <!-- lấy thông tin của 1 sản phẩm để hiển thị lên cho người dùng thấy -->
                            <?php
                            if (isset($_GET['id'])) {
                                $id = $_GET['id']; //18
                                $hh = new HangHoa();
                                $results = $hh->getListDetail($id);
                                // vì kết quả trả về chỉ có 1 row nên ko cần while
                                // đây là thông tin của 1 sản phẩm mà người dùng chọn
                                $mahh = $results[0];
                                $tenhh = $results[1];
                                $dongia = $results[2];
                                $giamgia = $results[3];
                                $hinh = $results[4];
                                $mota = $results[8];
                                $nhom = $results[6];
                                $soluongton = $results[9];
                            }
                            ?>

                            <div class="tab-pane active" id=""><img src="<?php echo 'Content/img/' . $hinh; ?>" alt="" width="400px" height="550px">
                            </div>

                        </div>

                    </div>
                    <div class="details col-md-4">
                        <input type="hidden" name="mahh" value="<?php echo $mahh; ?>" />
                        <!-- hiển thị tên sp -->
                        <h3 class="product-title" style="font-size:50px"><?php echo $tenhh; ?> </h3>



                        <!-- RaTing -->
                        <?php
                        $_STARS = new Stars();
                        $average = $_STARS->avg(); //$average[20=>3.5,21=>4,22=>3]
                        if (isset($_SESSION['username'])) {
                            $uid = $_SESSION['username'];
                        }

                        if (isset($_POST['pid']) && isset($_POST['stars'])) {
                            $pid = $_POST['pid'];
                            $star = $_POST['stars'];
                            $_STARS->update($pid, $uid, $star);
                        }
                        $rating = $_STARS->getRating($uid, $id); //$rating=4
                        ?>
                        <p style="color:gray;margin-left:-250px">Rating:<?= $average[$id] ?></p>
                        <div class="rating">
                            <!-- những thành phần có tiền tố là data thức là data attribute, giúp để lưu thông tin vào thẻ html
                         giúp có thể lấy được thông tin bằng js 1 cách nhanh nhất
                         ví dụ:
                         <div id="abc" data-pid="12" data-name="giày cao got"></div>
                         code js
                         var x=documnet.getElementById("abc");
                         console.log(x.dataset.pid);// 12
                         consolde.log(x.dataset.name);//giày cao got
                         getAttribute()

                        -->
                            <div style="color:gray;" class="stars" data-pid="<?= $id ?>">
                                Your rating:
                                <!-- tạo những ngôi sao -->
                                <?php
                                for ($i = 1; $i <= 5; $i++) {
                                    $img = $i <= $rating ? "star" : "star-blank";
                                    echo "<img src='Content/img/$img.png' style='width:30px;cursor:pointer;'
                                        data-set='$i'>";
                                }
                                ?>
                            </div>
                        </div>





                        <h4 class="price" style="font-size:30px">Giá bán: <?php echo $dongia; ?> đ</h4>


                        <b class="" style="font-size:20px">Số lượng tồn: <?php echo $soluongton; ?></b><br><br>
                        <b class="colors" style="font-size:20px">Màu:
                            <select name="mymausac" class="form-control" style="width:180px;height:50px;font-size:20px;margin-top:-40px;margin-left:70px">
                                <?php
                                $results = $hh->getListDetailNhom($nhom);
                                // trả ra nhiều row
                                while ($set = $results->fetch()) :
                                ?>
                                    <option value="<?php echo $set['mausac']; ?>">
                                        <?php echo $set['mausac']; ?>
                                    </option>
                                <?php
                                endwhile;
                                ?>
                            </select><br>

                            </br></br>
                            <div id="soluong" style="margin-top:-80px">
                                Số Lượng:

                                <input type="number" name="soluong" min="1" max="100" value="1" size="10" />

                            </div>


                            <div class="action" style="margin-top:20px">

                                <button class="add-to-cart btn btn-default" type="submit" data-toggle="modal" data-target="#myModal" style="width:280px;font-size:18px;background-color:red;">BUY IT
                                    <i class="fas fa-cart-plus" aria-hidden="true"></i>
                                </button>


                            </div>

                    </div>
                </form>
            </div>
        </div>
        <!-- </div> -->
    </article>
    <!-- tạo form hidden chứa giá trị khi mà người dùng chọn số ngôi sao lại -->
    <div class="hidden_form">
        <form id="Form2" name="Form2" action="" method="post" target="_self">
            <input type="hidden" name="pid" id="ninpid">
            <input type="hidden" name="stars" id="ninStar">
        </form>
    </div>


</section>

<div class="col-lg-6 text-left">
    <h3 class="" style="font-size:30px;margin-top:-10px"><u>MÔ TẢ CHI TIẾT</u></h3><br><br><br><br>
    <!-- mô tả -->
    <p class="product-description" style="margin-top:-120px;margin-bottom:100px">
        <?php echo $mota; ?>
    </p>
</div>
<div class="ct">
    <?php
    if (isset($_SESSION['makh'])) :
    ?>
        <section style="width:500px;margin-left:780px">
            <div class="col-12">
                <div class="row">
                    <!-- kiểm tra thử là phải bình luận của id sản phẩm hay ko -->
                    <?php
                    if (isset($_GET['id'])) {
                        $id = $_GET['id'];
                        $dt = new User();
                        $results = $dt->countComment($id); //$results[9]
                        $tong = $results[0];
                    }
                    ?>
                    <p class="float-left"><b>COMMENT: <?php echo $tong; ?></b></p>
                    <hr>
                </div>
                <form action="index.php?action=home&act=comment&id=<?php echo $_GET['id']; ?>" method="post">
                    <div class="row">

                        <input type="hidden" name="txtmahh" value="<?php echo $_GET['id']; ?>" />
                        <textarea class="input-field" type="text" name="comment" rows="2" cols="70" id="comment" placeholder="Thêm bình luận">  </textarea>
                        <br><input type="submit" class="btn btn-danger" id="submitButton" style="float: right;font-size:20px;margin-left:395px" value="Bình Luận" />

                    </div>

                </form>
                <div class="row">
                    <p class="float-left"><b>ALL COMMENTS</b></p>
                    <hr>
                </div>
                <div class="row">
                    <?php

                    $results = $dt->displayComment($_GET['id']);
                    while ($set = $results->fetch()) :
                    ?>
                        <div class="col-12">
                            <div class="row">
                                <i style="font-size:60px;color:red;margin-right:5px" class="fa fa-user" aria-hidden="true"></i>
                                <p style="margin-top:30px;"><?php echo '<b>' . $set['tenkh'] . ':</b>' . $set['noidung']; ?></p><br>
                            </div>
                        </div>
                    <?php
                    endwhile;
                    ?>
                    <br />
                </div>

            </div>
        </section>
    <?php
    endif;
    ?>
</div>



<div>
    <a class="" style="  position: fixed;
  bottom: 30px;right:-250px" href="index.php?action=login"><img src="Content/img/login.jpg" style="border-radius:50%;
                -moz-border-radius:50%;-webkit-border-radius:50%;width:25%"></a>
</div>




<script>
    var stars = {
        init: function() {
            for (let docket of document.getElementsByClassName("stars")) {
                console.log(docket);
                // truy xuất đc tới 5 ngôi sao và mỗi ngôi sao lắng nghe sự liện click
                for (let star of docket.getElementsByTagName("img")) {
                    console.log(star);
                    star.addEventListener("click", stars.click);
                }
            }
        },
        click: function() {
            let all = this.parentElement.getElementsByTagName("img"); // all=5
            let set = this.dataset.set,
                i = 1;
            for (let star of all) {
                star.src = i <= set ? "star.png" : "star-blank.png";
                i++;
            }
            // đỗ dữ liệu vào trong form hidden
            document.getElementById("ninpid").value = this.parentElement.dataset.pid; // 22
            document.getElementById("ninStar").value = this.dataset.set;
            document.getElementById("Form2").submit();
        }
    }
    // addEventListener 
    window.addEventListener("DOMContentLoaded", stars.init);
</script>