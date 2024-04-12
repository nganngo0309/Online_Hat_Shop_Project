<link rel="stylesheet" href="Content/CSS/home.css">

<body>
    <section id="middle">
        <div class="left" style="margin-top:-30px;">
            <h3 class="us">
                ABOUT<b>HAT</b><br>
            </h3>
            <p style="font-size:20px;text-align: justify;">Hats are often used for sun protection, rain protection, and fans when hot. Sometimes it can be used to hold water or to store it.
                Sometimes it can be used to hold water or to store it.Sometimes it can be used to hold water or to store it.
                Sometimes it can be used to hold water or to store it.Sometimes it can be used to hold water or to store it.
                Sometimes it can be used to hold water or to store it.
                Sometimes it can be used to hold water or to store it.

                <br><br>
            </p>


        </div>
        <div class="right">
            <div class="square">
                <img src="Content/img/home.jpg" alt="">

            </div>
        </div>
    </section><br>
    <!--Section: Examples-->
    <section id="examples" class="text-left">

        <!-- Heading -->
        <div class="row">

            <div class="col-lg-8 text-left">
                <h3 class="" style="font-size:40px;margin-top:-50px">NEW<b style="color:red">PRODUCTS</b></h3><br>
            </div>
            <div class="col-lg-4 text-right mt-4" style="margin-top:-30px">
                <a href="index.php?action=home&act=sanpham">
                    <span style="color: gray;">Details <i class="fa fa-arrow-right" aria-hidden="true"> </i></span>

            </div>
            </a>


        </div><br>
        <!--Grid row-->

        <div class="row">
            <?php
            $hh = new HangHoa();
            $result = $hh->getListHangHoaNew();
            while ($set = $result->fetch()) :
                // $set[24,giày cao got,600000,....]
                // {
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

                    <span class="font-weight-bold"><?php echo $set['tenhh']; ?></span></br>
                    <h5 class="my-4 font-weight-bold" style="color: red;font-size:20px;margin-right:200px"><?php echo number_format($set['dongia']); ?><sup><u>đ</u></sup></br>
                    </h5>

                    <button class="btn btn-danger" id="new" style="margin-top:-820px;width:21%;height:30px;font-size:15px">New</button>
                    <a href="index.php?action=home&act=detail&id=<?php echo $set['mahh']; ?>">
                        <button class="view btn btn-dark" type="submit" data-toggle="modal" data-target="#myModal" id="buy" style="margin-left:100px;height:40px; width:100px;font-size:15px"><i class="fa fa-eye" aria-hidden="true"> VIEW</i></button>
                    </a>

                </div>
            <?php
            // }
            endwhile;
            ?>

        </div>

        <!--Grid row-->

    </section>
    <!-- end sản phẩm mới nhất -->
    <!-- sản phẩm khuyến mãi -->
    <section id="examples1" class="text-left">

        <!-- Heading -->
        <div class="row">
            <div class="col-lg-8 text-left">
                <h3 class="" style="font-size:40px;margin-top:-50px">SALE<b style="color:red">PRODUCTS</b></h3><br>
            </div>
            <div class="col-lg-4 text-right mt-4">
                <a href="index.php?action=home&act=khuyenmai">
                    <span style="color: gray;">Details <i class="fa fa-arrow-right" aria-hidden="true"> </i></span>
            </div>
            </a>

        </div><br>
        <!--Grid row-->
        <div class="row" style="margin-bottom:-800px;">

            <?php

            $result = $hh->getListHangHoaSale();
            while ($set = $result->fetch()) :
                // $set[24,giày cao got,600000,....]
                // {
            ?>
                <!--Grid column-->
                <div class="col-lg-3 col-md-4 mb-3 text-center">

                    <div class="view overlay z-depth-1-half">
                        <img src="<?php echo 'Content/img/' . $set['hinh'] ?>" class="img-fluid" alt="">
                        <div class="mask rgba-white-slight"></div>
                    </div><br>
                    <div class="rating" style="text-align: center;">
                        <div class="stars"> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span>
                        </div>
                    </div>
                    <span class="font-weight-bold" style="text-align: center;"><?php echo $set['tenhh']; ?></span></br>


                    <h5 class="my-4 font-weight-bold">
                        <font color="red" style="font-size:20px"><?php echo number_format($set['giamgia']); ?><sup><u>đ</u></sup></font>
                        <strike style="font-size:20px;margin-left:95px"><?php echo number_format($set['dongia']); ?></strike><sup><u style="font-size: 15px;">đ</u></sup>
                    </h5>

                    <button class="btn btn-danger" id="new" style="margin-top:-875px;width:28%;height:30px;border-radius: 50%;margin-right:210px;font-size: 15px;">Sale</button>
                    <a href="index.php?action=home&act=detail&id=<?php echo $set['mahh']; ?>">
                        <button class="view btn btn-dark" type="submit" data-toggle="modal" data-target="#myModal" style="margin-left:160px;margin-top: -45px;height:40px; width:100px;font-size:15px"><i class="fa fa-eye" aria-hidden="true"> VIEW</i></button>
                    </a>



                </div>
            <?php
            endwhile;
            ?>
        </div>

        <!--Grid row-->

    </section><br><br>
    <!-- end sản phẩm khuyến mãi -->
    <!--Hình ảnh-->
    <div class="row" style="margin-bottom:-50px;margin-top:500px">
        <img src=" Content/img/p2.jpg" class="w-25">
        <img src="Content/img/p3.jpg" class="w-25">
        <img src="Content/img/p4.jpg" class="w-25">
        <img src="Content/img/p9.jpg" class="w-25">
    </div>



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

</body>