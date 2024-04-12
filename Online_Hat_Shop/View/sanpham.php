<link rel="stylesheet" href="Content/CSS/home.css">
<!-- sản phẩm-->
<?php
if (isset($_GET['act'])) {
    if ($_GET['act'] == "sanpham") {
        $ac = 1;
    } elseif ($_GET['act'] == "khuyenmai") {
        $ac = 2;
    } elseif ($_GET['act'] == "timkiem") {
        $ac = "timkiem";
    } elseif ($_GET['act'] == "locsp") {
        $ac = "locsp";
    }
}

?>

<!--Section: Examples-->
<section id="examples" class="text-center">

    <!-- Heading -->
    <div class="row">
        <div class="col-lg-8 text-right">
            <?php
            if ($ac == 1) {
                echo '            <div class="col-lg-8 text-left">
                <h3 class="" style="font-size:40px;margin-top:-50px">NEW<b style="color:red">PRODUCTS</b></h3><br>
            </div>';
            } elseif ($ac == 2) {
                echo '            <div class="col-lg-8 text-left">
                <h3 class="" style="font-size:40px;margin-top:-50px">SALE<b style="color:red">PRODUCTS</b></h3><br>
            </div>';
            } elseif ($ac == "timkiem") {
                echo '            <div class="col-lg-8 text-left">
                <h3 class="" style="font-size:40px;margin-top:-50px">SEARCH<b style="color:red">PRODUCTS</b></h3><br>
            </div>';
            }
            ?>

        </div>

    </div><br><br>



    <!--Grid row-->
    <div class="row">
        <?php
        $hh = new HangHoa();
        if ($ac == 1) {
            $result = $hh->getListHangHoaNewAll(); // $result=23sp
        } elseif ($ac == 2) {
            $result = $hh->getListHangHoaSaleAll(); //$result=5sp
        } elseif ($ac == "timkiem") {
            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                $namesearch = $_POST['txtsearch'];
                $result = $hh->getinfSearch($namesearch);
            }
        }
        while ($set = $result->fetch()) :
        ?>
            <!--Grid column-->
            <div class="col-lg-3 col-md-4 mb-3 text-center">

                <div class="view overlay z-depth-1-half">
                    <img src="<?php echo 'Content/img/' . $set['hinh'] ?>" class="img-fluid" alt="">
                    <div class="mask rgba-white-slight"></div>
                </div>
                <div class="rating" style="text-align: center;">
                    <div class="stars"> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span>
                    </div>
                </div>

                <span class="font-weight-bold "><?php echo $set['tenhh']; ?></span></br>
                <?php
                if ($ac == 2) {
                    echo '<h5 class="my-4 font-weight-bold">
                      <font color="red" style="font-size:20px">' . $set['giamgia'] . '<sup><u>đ</u></sup></font>
                      <strike style="font-size:20px;margin-left:105px" >' . $set['dongia'] . '</strike><sup><u style="font-size:15px">đ</u></sup>
                        </h5>';
                } elseif ($ac == 1) {
                    echo '<h5 class="my-4 font-weight-bold" style="color: red;font-size:20px;margin-right:170px">' . number_format($set['dongia']) . '<sup><u>đ</u></sup></br></h5>';
                } elseif ($ac == "timkiem") {
                    echo '<h5 class="my-4 font-weight-bold" style="color: red;font-size:20px;margin-right:170px">' . number_format($set['dongia']) . '<sup><u>đ</u></sup></br></h5>';
                }
                ?>
                <?php
                if ($ac == 2) {
                    echo '<button class="btn btn-danger" id="new" style="margin-top:-810px;width:28%;height:30px;border-radius: 50%;margin-right:210px;font-size: 15px;">Sale</button>';
                } elseif ($ac == 1) {
                    echo ' <button class="btn btn-danger" id="new" style="margin-right:210px;margin-top:-810px;width:21%;height:30px;font-size:15px">New</button>';
                }
                ?>
                <a href="index.php?action=home&act=detail&id=<?php echo $set['mahh']; ?>">
                    <button class="view btn btn-dark" type="submit" data-toggle="modal" data-target="#myModal" id="buy" style="margin-left:160px;margin-top:-45px;height:40px; width:100px;font-size:15px"><i class="fa fa-eye" aria-hidden="true"> VIEW</i></button><br><br><br><br>
                </a>


            </div>
        <?php
        endwhile;
        ?>
    </div>
</section>

<div style="position:fixed;margin-left:570px;margin-top:-80px">
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

<div>
    <a class="" style="  position: fixed;
  bottom: 30px;right:-250px" href="index.php?action=login"><img src="Content/img/login.jpg" style="border-radius:50%;
                -moz-border-radius:50%;-webkit-border-radius:50%;width:25%"></a>
</div>
<!-- end sản phẩm mới nhất -->