<div class="table-responsive">
  <!-- kiểm tra nếu ko có hàng trong giỏ hàng thì thông báo cho người dùng biết -->
  <?php
  if (!isset($_SESSION['cart']) || count($_SESSION['cart']) == 0) :
    echo '<script>alert("Giỏ Hàng Trống");</script>';
    include "products.php";
    //echo '<meta http-equiv="refresh" content="0;url=../index.php?action=home&act=sanpham"/>';
  ?>
  <?php
  else :
  ?>
    <div style="margin-top:100px;font-size:20px">
      <br>
      <h3 class="" style="font-size:50px;margin-top:-50px">MY<b style="color:red">CART</b></h3><br><br><br>


    </div><br><br>
    <form action="index.php?action=giohang&act=update_item" method="post" style="margin-top:-100px">
      <table class="table table-bordered">
        <thead>

          <tr class="table-danger">
            <th>Số TT</th>
            <th>Thông Tin Sản Phẩm</th>
            <th>Tùy Chọn Của Bạn</th>
            <th colspan="2">Giá</th>
          </tr>
        </thead>
        <tbody>
          <?php
          // foreach(mang as $key=>value)
          // foreach(mang as $item)
          $j = 0;
          foreach ($_SESSION['cart'] as $key => $item) :
            $j++;
            $costnew = number_format($item['cost'], 2);
            $totalnew = number_format($item['total'], 2);
          ?>
            <tr>
              <td><?php echo $j; ?></td>
              <td><img width="50px" height="50px" src="Content/img/<?php echo $item['hinh']; ?>">
                <?php echo $item['name']; ?></td>
              <td><?php echo $item['mau']; ?></td>
              <td>Đơn Giá: <?php echo $costnew; ?> <br>Số Lượng:

                <input style="width:100px" type="text" name="newqty[<?php echo $item['mahh']; ?>]" value="<?php echo $item['qty']; ?>" /><br />
                <p style="margin-left:-40px">Thành Tiền: <?php echo $totalnew; ?><sup><u>đ</u></sup></p>
              </td>
              <td><a href="index.php?action=giohang&act=delete_item&id=<?php echo $item['mahh'] ?>"><button type="button" style="font-size:15px; height:50px;width:50px;margin-top:25px;border-radius: 50%;" class="btn btn-danger">Xóa</button></a>

                <button type="submit" style="margin-top:25px;font-size:15px; height:50px;width:50px;border-radius: 50%;background-color: pink;" class="btn btn">Sửa</button>

              </td>
            </tr>
          <?php
          endforeach;
          ?>
          <tr>
            <td colspan="3">
              <b>Tổng Tiền</b>
            </td>
            <td style="float: right;">
              <b style="color:red"><?php echo get_subtotal(); ?> <sup><u>đ</u></sup></b>
            </td>
            <td><a style="color:red" href="index.php?action=hoadon">Thanh toán</a></td>
          </tr>
        </tbody>
      </table>
    </form>
  <?php
  endif;
  ?>
</div>
</div>
<div>
  <a class="" style="  position: fixed;
  bottom: 30px;right:-250px" href="index.php?action=login"><img src="Content/img/login.jpg" style="border-radius:50%;
                -moz-border-radius:50%;-webkit-border-radius:50%;width:25%"></a>
</div>