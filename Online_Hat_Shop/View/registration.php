<html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" href="Content/CSS/registration.css">
  <title>HOME</title>
</head>

<body>
  <!--form đang ký-->
  <div class="container">
    <div class="row" style="margin-top:100px;margin-bottom:100px;margin-top:10px">
      <div class="Col-lg-6">
        <div class="mx-auto w-100 p-3">
          <h4 style="font-size:30px;text-align:justify"><br>REGISTRATION</h4><br><br>
          <form id="form" action="index.php?action=registration&act=registration_action" method="post">

            <div class="input-group form-group ">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-address-book" aria-hidden="true"></i></span>
              </div>
              <input type="text" name="txttenkh" class="form-control" placeholder="Full name">
            </div>


            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi bi-geo-alt-fill" aria-hidden="true"></i></span>
              </div>
              <input type="text" name="txtdiachi" class="form-control" placeholder="Address">
            </div>


            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-phone" aria-hidden="true"></i></span>
              </div>
              <input type="number" name="txtsodt" class="form-control" placeholder="Phone">
            </div>


            <div class="input-group form-group ">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
              </div>
              <input type="text" name="txtusername" class="form-control" placeholder="Username">
            </div>


            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-envelope" aria-hidden="true"></i></span>
              </div>
              <input type="email" name="txtemail" class="form-control" placeholder="Email">
            </div>

            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi bi-lock-fill" aria-hidden="true"></i></span>
              </div>
              <input type="password" name="txtpass" class="form-control" placeholder="Password">

            </div>

            <div class="input-group form-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi bi-unlock-fill" aria-hidden="true"></i></span>
              </div>
              <input type="password" name="retypepassword" class="form-control" placeholder="Enter Password">
            </div>





            <div class="form-group text-center">
              <button type="submit" class="btn btn-danger">Completed</button>
            </div>

          </form>
        </div>
      </div>

      <div class="col-lg-6">
        <div><img src="Content/img/dk.jfif" style="border-radius:50%;
                -moz-border-radius:50%;-webkit-border-radius:50%;width:100%; margin-left:100px;margin-top:50px">
        </div>
      </div>

    </div>
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