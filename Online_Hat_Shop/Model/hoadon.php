<?php
class HoaDon
{
    var $sohd = null;
    var $makh = null;
    var $ngaydat = null;
    var $tongtien = 0;
    var $mahh = null;
    public function __construct()
    {
    }
    // thực hiện phương thức insert vào bảng hoadon1
    public function insertOrder($makh)
    {
        $date = new DateTime('now');
        $ngay = $date->format("Y-m-d");
        $query = "insert into hoadon1(masohd,makh,ngaydat,tongtien)values(Null,$makh,'$ngay',0)";
        $db = new connect();
        $db->exec($query);
        // lúc này đã chèn vào đc database
        // lấy ra mã số hóa đơn vừa chèn vào
        $select = "select masohd from hoadon1 order by masohd DESC limit 1";
        $sohd = $db->getInstance($select); //$sohd[44]
        return $sohd[0]; //44
    }
    // phương thức insert vào bảng chitiethd
    public function insertOrderDetail($sohd, $mah, $solm, $mausac, $thanhtien)
    {
        $query = "insert into cthoadon1(masohd,mahh,soluongmua,mausac,thanhtien,tinhtrang)values($sohd,$mah,$solm,'$mausac',$thanhtien,0)";
        $db = new connect();
        $db->exec($query);
    }
    // phương thức update tong tien trong bảng hoadon1
    function updateOrderTotal($sohdid, $total)
    {
        $query = "update hoadon1 set tongtien=$total where masohd=$sohdid";
        $db = new connect();
        $db->exec($query);
    }
    // hiển thị thông tin khách hàng mua hàng
    function getOrder($sohd)
    {
        $select = "select a.masohd,a.ngaydat,b.tenkh,b.diachi,b.sodienthoai from hoadon1 a 
        INNER JOIN khachhang1 b on a.makh=b.makh WHERE masohd=$sohd";
        $db = new connect();
        // vì kết quả trả về là 1 row nên dùng getIntance
        $result = $db->getInstance($select);
        return $result; //$result[45,2021-10-7, tú,vũng tàu, 123456]

    }
    function getOrderDetail($sohd)
    {
        $db = new connect();
        $select = "select a.tenhh,a.dongia,b.mausac,b.soluongmua, b.thanhtien from hanghoa a 
        INNER join cthoadon1 b on a.mahh=b.mahh where masohd=$sohd";
        // vì kết quả trả về là 1 row nên dùng getIntance
        $result = $db->getList($select);
        return $result;
    }
}
