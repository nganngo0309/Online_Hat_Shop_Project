<div class="table-responsive">
  <!-- kiểm tra là nếu người dùng đó ko tồn tại và giỏ hàng =0 thì kêu người ta đăng nhập, ngược lại thì hiển thị form ra -->
  <?php
  if (!isset($_SESSION['makh']) || count($_SESSION['cart']) == 0) :
    echo '<script> alert("Bạn phải đăng nhập");</script>';
    include 'cart.php';
  ?>
  <?php
  else :
  ?>

    <div style="margin-top:100px;font-size:20px">
      <br>
      <h3 class="" style="font-size:50px;margin-top:-50px">MY<b style="color:red">BILL</b></h3><br><br><br>


    </div><br><br>

    <form action="" method="post" style="margin-top:-100px;margin-bottom:100px">
      <table class="table table-bordered" border="0">
        <?php
        if (isset($_SESSION['sohd'])) {
          $masohd = $_SESSION['sohd'];
          $hd = new HoaDon();
          $result = $hd->getOrder($masohd); //$result=[45,2021-10-7, tú,vũng tàu, 123456]
          $ngay = $result[1];
          $ten = $result[2];
          $diachi = $result[3];
          $dt = $result[4];
        }
        ?>

        <tr>
          <td colspan="2">Số Hóa đơn: <?php echo $masohd; ?></td>
          <td colspan="2"> Ngày lập: <?php echo $ngay; ?></td>
        </tr>
        <tr>
          <td colspan="2">Họ và tên:</td>
          <td colspan="2"><?php echo $ten; ?></td>
        </tr>
        <tr>
          <td colspan="2">Địa chỉ: </td>
          <td colspan="2"><?php echo $diachi; ?></td>
        </tr>
        <tr>
          <td colspan="2">Số điện thoại: </td>
          <td colspan="2"><?php echo $dt; ?></td>
        </tr>

      </table>
      Thông tin sản phẩm
      <table class="table table-bordered">
        <thead>

          <tr class="table-danger">
            <th>Số TT</th>
            <th>Thông Tin Sản Phẩm</th>
            <th>Tùy Chọn Của Bạn</th>
            <th>Giá</th>
          </tr>
        </thead>
        <tbody>
          <?php

          $j = 0;
          $result = $hd->getOrderDetail($_SESSION['sohd']);
          while ($set = $result->fetch()) :
            $j++;
          ?>

            <tr>
              <td><?php echo $j; ?></td>
              <td><?php echo $set['tenhh']; ?></td>
              <td>Màu: <?php echo $set['mausac']; ?></td>
              <td>Đơn Giá: <?php echo $set['dongia']; ?> - Số Lượng: <?php echo $set['soluongmua']; ?><br />
              </td>
            </tr>
          <?php
          endwhile;
          ?>
          <tr>
            <td colspan="3">
              <b>Tổng Tiền: </b>
            </td>
            <td>
              <b style="color:red"> <?php echo get_subtotal(); ?><sup><u>đ</u></sup></b>
            </td>

          </tr>
        </tbody>
      </table>
    </form>
  <?php
  endif;
  ?>
</div>
</div>