<?php
$action = "sanpham";
if (isset($_GET['act'])) {
  $action = $_GET['act'];
}
switch ($action) {
  case "sanpham":
    include "View/hanghoa.php";
    break;
  case "inserthanghoa":
    include "View/edithanghoa.php";
    break;
  case "insert_hanghoa":
    // nhận thông tin bên submit edithanghoa gửi qua
    if (isset($_POST['submit'])) {
      $mahh = $_POST['mahh'];
      $tenhh = $_POST['tenhh'];
      $dongia = $_POST['dongia'];
      $giamgia = $_POST['giamgia'];
      $hinh = $_FILES["image"]["name"];
      $Nhom = $_POST['nhom'];
      $maloai = $_POST['maloai'];
      $ngaylap = $_POST['ngaylap'];
      $mota = $_POST['mota'];
      $soluongton = $_POST['slt'];
      $mausac = $_POST['mausac'];
      // đem toàn bộ thông tin này chèn vào database
      $hh = new HangHoa();
      $hh->inserthh(
        $tenhh,
        $dongia,
        $giamgia,
        $hinh,
        $Nhom,
        $maloai,
        $ngaylap,
        $mota,
        $soluongton,
        $mausac
      );
      // sau khi inset vào database thành công thì đem hình từ server về trong thư mục imagetourdien
      if (isset($hh)) {
        uploadImage();
        echo '<script> alert("Lưu sản phẩm thành công")</script>';
      }
    }
    include "View/hanghoa.php";
    break;
  case "update":
    include "View/edithanghoa.php";
    break;
  case "update_hanghoa":
    // truyền qua đây là id
    if (isset($_GET['id'])) {
      $mahh = $_POST['mahh'];
      $tenhh = $_POST['tenhh'];
      $dongia = $_POST['dongia'];
      $giamgia = $_POST['giamgia'];
      $hinh = $_FILES["image"]["name"];
      $Nhom = $_POST['nhom'];
      $maloai = $_POST['maloai'];
      $ngaylap = $_POST['ngaylap'];
      $mota = $_POST['mota'];
      $soluongton = $_POST['slt'];
      $mausac = $_POST['mausac'];
      $hh = new HangHoa();
      $hh->updatesp(
        $mahh,
        $tenhh,
        $dongia,
        $giamgia,
        $hinh,
        $Nhom,
        $maloai,
        $ngaylap,
        $mota,
        $soluongton,
        $mausac
      );
      if (isset($hh)) {
        uploadImage();
        echo '<script> alert("Cập nhật sản phẩm thành công")</script>';
      } else {
        echo '<script> alert("Cập nhật sản phẩm ko thành công")</script>';
      }
    }
    include "View/hanghoa.php";
    break;
  case "delete":
    //ktra có truyền dc qua id hay ko
    if (isset($_GET['id'])) {
      $mahh = $_GET['id'];
      $hh = new HangHoa();
      $hh->deleteMaHangHoa($mahh);
    }
    echo '<script> alert("Xoa sản phẩm thành công")</script>';
    include "View/hanghoa.php";
    break;
}
