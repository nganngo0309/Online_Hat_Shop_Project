<link rel="stylesheet" href="Content/CSS/home.css">
<?php
// tìm tổng số record(hàng hoá)
$hh = new HangHoa();
$results = $hh->getListHangHoaAll();
$count = $results->rowCount(); // trả về 19 record sản phẩm
// quy định mỗi trang bao nhiêu sản phẩm tức là $limit
$limit = 12;
// tính tổng số trang và tính $start
$p = new Page();
// gọi tổng số trang ra
$page = $p->findPage($count, $limit); //$page=3
// gọi ra tính $start
$start = $p->findStart($limit);
// tạo current_page: trang hiện tại dựav ào get URL
$current_page = isset($_GET['page']) ? $_GET['page'] : 1;
?>

<!-- sản phẩm-->
<?php
if (isset($_GET['action'])) {
    if ($_GET['action'] == "products") {
        $ac = "products";
    }
}
?>

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

<div style="margin-top:100px;font-size:20px">
    <br>
    <h3 class="" style="font-size:50px;margin-top:-50px">OUR<b style="color:red">PRODUCTS</b></h3><br><br><br>
</div><br><br>

<div class="row" style="margin-bottom: 100px;">

    <?php
    $hh = new HangHoa();
    $results = $hh->getListHangHoaAllPage($start, $limit);
    while ($set = $results->fetch()) :
        // $set[24,giày cao got,600000,....]
        // {
    ?>
        <!--Grid column-->
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

            <span class="font-weight-bold"><?php echo $set['tenhh']; ?></span></br>
            <h5 class="my-4 font-weight-bold" style="color: red;font-size:20px;margin-right:200px"><?php echo number_format($set['dongia']); ?><sup><u>đ</u></sup></br>
            </h5>


            <a href="index.php?action=home&act=detail&id=<?php echo $set['mahh']; ?>">
                <button class="view btn btn-dark" type="submit" data-toggle="modal" data-target="#myModal" id="buy" style="margin-left:150px;height:40px; width:100px;font-size:15px"><i class="fa fa-eye" aria-hidden="true"> VIEW</i></button>
            </a><br><br><br><br>

        </div>

    <?php
    // }
    endwhile;
    ?>

</div>

</div>


<div class="col-md-6 div col-md-offset-3">
    <ul class="pagination" style="margin-left:170px;margin-top:-100px;">
        <?php
        //khi nào lùi về trang sau, khi trang hiện tại tức là current_page > 1 
        //thì mới lùi về 1 đc và nút mới xuất hiện
        if ($current_page > 1 && $page > 1) {
            echo '<li><a href="index.php?action=products&act=products&page' . ($current_page - 1) . '"><i class="fa fa-arrow-left" aria-hidden="true"> </i></a></li>';
        }
        for ($i = 1; $i <= $page; $i++) {
        ?>
            <li><a href="index.php?action=products&act=products&page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
        <?php
        }
        // next cho đến khi trang hiện tại < tổng số trang
        if ($current_page < $page && $page > 1) {
            echo '<li><a href="index.php?action=products&act=products&page' . ($current_page + 1) . '"><i class="fa fa-arrow-right" aria-hidden="true"> </i></a></li>';
        }
        ?>
    </ul>
</div>
<!--Grid row-->

</section>
<!-- end sản phẩm mới nhất -->


<div>
    <a class="" style="  position: fixed;
  bottom: 30px;right:-250px" href="index.php?action=login"><img src="Content/img/login.jpg" style="border-radius:50%;
                -moz-border-radius:50%;-webkit-border-radius:50%;width:25%"></a>
</div>