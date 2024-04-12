<?php
if (isset($_GET['act'])) {
  if ($_GET["act"] == "update") {
    $ac = 1;
  } else if ($_GET["act"] == "inserthanghoa") {
    $ac = 2;
  } else {
    $ac = 0;
  }
}
?>
<!-- hiển thị tiêu đề -->
<?php
if ($ac == 1) {
  echo '<h3 class="" style="font-size:50px;margin-left:-60px">EDIT<b style="color:red">PRODUCTS</b></h3><br><br><br>';
} else if ($ac == 2) {
  echo '<h3 class="" style="font-size:50px;margin-left:-60px">ADD<b style="color:red">PRODUCTS</b></h3><br><br><br>';
} else {
  echo '<h3 class="" style="font-size:50px;margin-left:-60px">NO<b style="color:red">PRODUCTS</b></h3><br><br><br>';
}
?>

<div class="row">
  <?php
  if (isset($_GET['id'])) {
    // thông tin của 1 món hàng
    $mahh = $_GET['id']; //31
    $hh = new HangHoa();
    $result = $hh->getListHangHoaID($mahh);
    $tenhh = $result['tenhh'];
    $dongia = $result['dongia'];
    $giamgia = $result['giamgia'];
    $hinh = $result['hinh'];
    $nhom = $result['nhom'];
    $maloai = $result['maloai'];
    $ngaylap = $result['ngaylap'];
    $mota = $result['mota'];
    $solt = $result['soluongton'];
    $mausac = $result['mausac'];
  }
  ?>
  <?php
  if ($ac == 1) {
    echo ' <form action="index.php?action=sanpham&act=update_hanghoa&id=<?php echo $mahh;?>" method="post" enctype="multipart/form-data">';
  } else if ($ac == 2) {
    echo ' <form action="index.php?action=sanpham&act=insert_hanghoa" method="post" enctype="multipart/form-data">';
  } else {
    echo 'KO CÓ';
  }
  ?>

  <table class="table" style="border: 0px;margin-top:60px;margin-right:550px;font-size: 18px;">

    <tr>
      <td>Mã hàng</td>
      <td> <input type="text" class="form-control" name="mahh" value="<?php if (isset($mahh)) echo $mahh; ?>" readonly /></td>
    </tr>
    <tr>
      <td>Tên hàng</td>
      <td><input type="text" class="form-control" name="tenhh" value="<?php if (isset($tenhh)) echo $tenhh; ?>" maxlength="100px"></td>
    </tr>
    <tr>
      <td>Đơn giá</td>
      <td><input type="text" class="form-control" name="dongia" value="<?php if (isset($dongia)) echo $dongia; ?>"></td>
    </tr>
    <tr>
      <td>Giảm giá</td>
      <td><input type="text" class="form-control" name="giamgia" value="<?php if (isset($giamgia)) echo $giamgia; ?>"></td>
    </tr>
    <tr>
      <td>Hình</td>
      <td>
        <?php
        if (isset($hinh)) {
          echo '<label><img width="30%" src="Content/img/' . $hinh . '"></label>';
        }
        ?>

        <br>Chọn file để upload:
        <input type="file" name="image" id="fileupload">

      </td>
    </tr>
    <tr>
      <td>Nhóm</td>

      <td>
        <input type="text" class="form-control" name="nhom" value="<?php if (isset($nhom)) echo $nhom; ?>">
      </td>
    </tr>
    <tr>
      <td>Mã loại</td>
      <!-- hiển thị là lấy ra tên loại hiển thị, nhưng khi lưu là lưu mã loại -->
      <td>
        <select name="maloai" class="form-control" style="width:150px;">
          <?php
          $selectLoai = -1;
          if (isset($maloai) && $maloai != -1) {
            $selectLoai = $maloai; //=3
          }
          $hh = new HangHoa();
          $results = $hh->getListMaLoaiHang();
          while ($set = $results->fetch()) :
          ?>
            <option value="<?php echo $set['maloai']; ?>" <?php if ($selectLoai == $set['maloai']) echo 'selected="selected"' ?>><?php echo $set['tenloai']; ?></option>
          <?php
          endwhile;
          ?>
        </select>
      </td>
    </tr>
    <tr>
      <td>Ngày lập</td>
      <td><input type="text" class="form-control" name="ngaylap" value="<?php if (isset($ngaylap)) echo $ngaylap; ?>">
      </td>
    </tr>
    <tr>
      <td>Mô tả</td>
      <td><input type="text" class="form-control" name="mota" value="<?php if (isset($mota)) echo $mota; ?>">
      </td>
    </tr>
    <tr>
      <td>Số lượng tồn</td>
      <td><input type="text" class="form-control" name="slt" value="<?php if (isset($solt)) echo $solt; ?>">
      </td>
    </tr>
    <tr>
      <td>Màu sắc</td>
      <td><input type="text" class="form-control" name="mausac" value="<?php if (isset($mausac)) echo $mausac; ?>">
      </td>
    </tr>

    <tr>
      <td colspan="2">
        <input class="btn btn-danger" type="submit" value="OK" name="submit" style="width:200px;height:50px">


      </td>
    </tr>

  </table>
  </form>
</div>