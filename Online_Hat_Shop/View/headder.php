<link rel="stylesheet" href="Content/CSS/headder.css">

<body>

    <section id="content">
        <div class="menu_top">

            <nav class="navbar navbar-expand-sm  fixed-top " style="height:80px;;margin:0 auto;background-color:white">
                <a class="navbar-brand" href="#">
                    <img src="Content/img/logo.png" alt="Logo" style="width:80px;margin-left:0px;margin-top:-20px">
                    <img src="Content/img/ngan.png" alt="Logo" style="width:150px;margin-left:80px;margin-top:-70px">
                </a>
                <ul style="margin-left:-50px;font-size:20px;">
                    <li><a href="index.php?action=home" style="color:black;margin-bottom:30px;margin-left:100px"><br><b><i class="fas fa-home"></i>HOME</b></a></li>
                    <li><a href="index.php?action=products" style="color:black"><i class="fas fa-shopping-bag"></i><b>PRODUCTS</b></a></li>
                    <li><a href="index.php?action=contact" style="color:black"><i class="fas fa-phone"></i><b>CONTACT</b></a></li>
                    <li>
                        <form class="form-inline" action="index.php?action=home&act=timkiem" method="post">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <!-- <a href="Trangchu.php?trang=tk"> -->
                                    <button type="submit" id="btsearch" class="font-weight-bold ml-auto" aria-hidden="true" style="color: rgb(250, 248, 246);background-color: rgb(194, 12, 12);border-color: rgb(182, 8, 8);border-color: chocolate;width:50px;height:40px;margin-right:-3px;">
                                        <i class="fa fa-search" style="color:white;margin-right:2px;"></i> </button>
                                    <!-- </a> -->
                                    <!-- <span class="input-group-text">@</span> -->
                                    <input type="text" name="txtsearch" class="form-control" placeholder="Search Items" style="height:40px;font-size:15px" />
                                </div>

                        </form>
                    </li>
                    <li>
                        <!-- nếu đăng nhập thành công thì thông tin của 1 user nó sẽ đc lưu vào session
                             -->
                        <?php
                        if (isset($_SESSION['makh']) && isset($_SESSION['username'])) : ///{
                            $name = $_SESSION['username'];
                        ?>
                    <li><i style="margin-top: -20px; margin-left: 40px;font-size:40px;color:red" class="fa fa-user" aria-hidden="true"></i></li>
                    <p style="color:red;margin-top: 55px; margin-left: -40px;"><?php echo $name; ?></p>
                <?php
                        else :
                            echo '<p style="color: red; margin-top: 20px; margin-left: 0px;"></p>';
                ?>
                <?php
                        endif;
                ?>


                </li>

                <li><a href="index.php?action=login&act=log_out" style="color:black"><img src="Content/img/images.png" style="width:35px;height:30px;margin-left:10px"></a></li>
                </ul>

            </nav>
        </div>
    </section>
    <!--SLIDE-->
    <div id="demo" class="carousel slide" data-ride="carousel" style="margin-top:-20px">
        <!-- Indicators, BA dấu gạch dưới slide -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
        </ul>
        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Content/img/bnn3.png" alt="#" style="width:1550px;height:550px;">

            </div>
            <div class="carousel-item">
                <img src="Content/img/bnn1.jpg" alt="#" style="width:1550px;height:550px;">

            </div>
        </div>
        <!-- nút báck dứi next _controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>