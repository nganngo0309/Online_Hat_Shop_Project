<?php
class HangHoa
{
  // thuojc tính
  // hàm tạo
  public function __construct()
  {
  }
  //pt
  function getListHangHoa()
  {
    $db = new connect();
    $select = "select * from hanghoa";
    $result = $db->getList($select);
    return $result;
  }
  // phương thức hiển thị loại hàng
  function getListMaLoaiHang()
  {
    $db = new connect();
    $select = "select maloai,tenloai from loai";
    $result = $db->getList($select);
    return $result;
  }
  // phương thức insert vào database
  function inserthh(
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
  ) {
    $date = new DateTime($ngaylap);
    $ngay = $date->format("Y-m-d");
    $db = new connect();
    $query = "insert into hanghoa(mahh,tenhh,dongia,giamgia,hinh,nhom,maloai,ngaylap,mota,
    soluongton,mausac)
    values(NULL,'$tenhh',$dongia,$giamgia,'$hinh',$Nhom,$maloai,'$ngay','$mota',
    $soluongton,'$mausac')";
    $db->exec($query);
  }
  // lấy thông tin của 1 hàng hóa
  function getListHangHoaID($mahh)
  {
    $db = new connect();
    $select = "select * from hanghoa where mahh=$mahh";
    $result = $db->getInstance($select);
    return $result;
  }
  // phương thức update hang hoaas
  function updatesp(
    $id,
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
  ) {
    $date = new DateTime($ngaylap);
    $ngay = $date->format("Y-m-d");
    $db = new connect();
    $query = "update hanghoa
    set tenhh='$tenhh',
    dongia=$dongia,
    giamgia=$giamgia,
    hinh='$hinh',
    nhom=$Nhom,
    maloai=$maloai,
    ngaylap='$ngay',
    mota='$mota',
    soluongton=$soluongton,
    mausac='$mausac',
    where mahh=$id
    ";
    $db->exec($query);
  }
  //pthuc xóa
  function deleteMaHangHoa($id)
  {
    $db = new connect();
    $query = "delete from hanghoa where mahh=$id";
    $db->exec($query);
  }
  function insertLoaiHang($id, $tenloai, $idmenu)
  {
    $db = new connect();
    $query = "insert into loai(maloai,tenloai,idmenu)values($id,'$tenloai',$idmenu)";
    $db->exec($query);
  }
  function getListHangHoa_thongke()
  {
    $db = new connect();
    $select = "SELECT a.tenhh,sum(soluongmua) as soluongban from hanghoa a INNER join cthoadon1 b 
    on a.mahh=b.mahh GROUP by a.tenhh";
    $result = $db->getList($select);
    return $result;
  }
}
