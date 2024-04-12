<div style="margin-top:100px;font-size:20px">
  <br>
  <h3 class="" style="margin-left:-150px;font-size:30px;margin-bottom:50px;margin-top:-50px;color:red"><b>DANH SÁCH SẢN PHẨM</b></h3><br><br><br>

  <!-- tìm kiếm sản phẩm -->

</div>
<div class="row col-12">
  <a href="index.php?action=sanpham&act=inserthanghoa">
    <button class="btn btn-danger" style="margin-top:-180px;margin-left:1200px;border-radius:50%;-moz-border-radius:50%;-webkit-border-radius:50%;">
      <h4>ADD <br>PRODUCT</h4>
    </button>
  </a>
  <a href="index.php?action=loaisanpham"">
    <button class=" btn btn-dark" style="margin-top:-220px;margin-left:1020px;border-radius:50%;-moz-border-radius:50%;-webkit-border-radius:50%;">
    <h4>ADD <br>CATEGORY</h4>
    </button>
  </a>
</div>
<div class="row">
  <table class="table-hover" style="margin-top:-50px;width:1500px;margin-left:-165px;text-align: center;">
    <thead>
      <tr class="table-danger" style="text-align: center;">
        <th> Mã hàng </th>
        <th>&emsp;&emsp;&emsp;&emsp;&emsp;Tên hàng</th>
        <th>&emsp;&emsp;Đơn giá</th>
        <th>&emsp;Giảm giá</th>
        <th>&emsp;&emsp;&emsp;&emsp;&emsp;Hình</th>
        <th>&emsp;&emsp;Nhóm</th>
        <th>&emsp;&emsp;Mã loại</th>
        <th>&emsp;Ngày lập</th>
        <th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Mô tả</th>
        <th>Số lượng tồn</th>
        <th>&emsp;Màu sắc</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <?php
      $hh = new HangHoa();
      $result = $hh->getListHangHoa();
      while ($set = $result->fetch()) :
      ?>
        <tr>
          <td><?php echo $set['mahh']; ?></td>
          <td style="width:200px"><?php echo $set['tenhh']; ?></td>
          <td style="width:100px"><?php echo $set['dongia']; ?></td>
          <td style="width:100px"><?php echo $set['giamgia']; ?></td>
          <td><img width="100%" src="../Content/img/<?php echo $set['hinh']; ?>" /></td>
          <td style="width:100px"><?php echo $set['nhom']; ?></td>
          <td style="width:100px"><?php echo $set['maloai']; ?></td>
          <td style="width:100px"><?php echo $set['ngaylap']; ?></td>
          <td style="width:300px"><?php echo $set['mota']; ?></td>
          <td style="width:100px"><?php echo $set['soluongton']; ?></td>
          <td style="width:100px"><?php echo $set['mausac']; ?></td>
          <td><br><button style=" margin-left:10px" class="btn btn-danger">
              <a style="color:white" href="index.php?action=sanpham&act=update&id=<?php echo $set['mahh']; ?>">EDIT</a></button><br><br>
            <button class="btn btn-dark"><a style="color:white" href="index.php?action=sanpham&act=delete&id=<?php echo $set['mahh']; ?>">DELETE</a></button>
          </td>
        </tr>
      <?php
      endwhile;
      ?>
    </tbody>
  </table>
</div>