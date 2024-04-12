<?php
class HangHoa
{
    // thuộc tính
    var $mahh = 0; // 0 là vì kiểu dữ liệu cho trong database là kiểu số
    var $tenhh = null; // vì kiểu trong database là chuỗi
    var $dongia = 0;
    var $giamgia = 0;
    var $hinh = null;
    var $nhom = 0;
    var $maloai = 0;
    var $dacbiet = 0;
    var $soluotxem = 0;
    var $ngaylap = null;
    var $mota = null;
    var $solt = 0;
    var $mausac = null;
    //hàm tạo
    public function __construct()
    {
    }
    //phương thức đối với bản hàng hóa là các câu lệnh select, insert,update, delete,...
    // phương thức bên đây chủ yếu là các câu truy vấn yêu cầu lớp connect thực thi và trả về kết quả cho nó
    // các câu truy vấn là select thì query hoặc prepare sẽ thực thi
    // câu lệnh insert, update, delete... thì exec, prepare thực thi
    public function getListHangHoaNew()
    {
        // câu lệnh truy vấn
        $select = "select * from hanghoa order by mahh desc limit 4";
        // câu lệnh truy vấn này ai sẽ thực hiện? đó là phương thức query và prepare(execute)
        $db = new connect();
        $result = $db->getList($select); // 12 sản phẩm
        return $result;
    }
    // pt getListHangHoaNew chứa 12 sản phẩm đc lấy từ database về
    public function getListHangHoaSale()
    {
        // câu lệnh truy vấn
        $select = "select * from hanghoa where giamgia>0 limit 4";
        // câu lệnh truy vấn này ai sẽ thực hiện? đó là phương thức query và prepare(execute)
        $db = new connect();
        $results = $db->getList($select); // 8 sản phẩm
        return $results;
    }
    // phương thức lấy ra tất cả sản phẩm trong products
    public function getListHangHoaAll()
    {
        // câu lệnh truy vấn
        $select = "select * from hanghoa where giamgia=0";
        // câu lệnh truy vấn này ai sẽ thực hiện? đó là phương thức query và prepare(execute)
        $db = new connect();
        $results = $db->getList($select); // 8 sản phẩm
        return $results;
    }
    // getListHangHoaNewAll lấy đc tất cả sản phảm từ database đỗ về
    // phương thức hiển thị tất cả sản phẩm sale
    public function getListHangHoaSaleAll()
    {
        // câu lệnh truy vấn
        $select = "select * from hanghoa where giamgia>0";
        // câu lệnh truy vấn này ai sẽ thực hiện? đó là phương thức query và prepare(execute)
        $db = new connect();
        $result = $db->getList($select); // 8 sản phẩm
        return $result;
    }
    public function getListHangHoaNewAll()
    {
        // câu lệnh truy vấn
        $select = "select * from hanghoa order by mahh desc limit 12";
        // câu lệnh truy vấn này ai sẽ thực hiện? đó là phương thức query và prepare(execute)
        $db = new connect();
        $result = $db->getList($select); // 12 sản phẩm
        return $result;
    }



    public function giagiamdan()
    {
        // câu lệnh truy vấn
        $select = "select * from hanghoa order by dongia desc";
        // câu lệnh truy vấn này ai sẽ thực hiện? đó là phương thức query và prepare(execute)
        $db = new connect();
        $result = $db->getList($select); // 12 sản phẩm
        return $result;
    }




    // dạng tiêu chuẩn dùng query
    public function getListDetail($mahh)
    {
        $select = "select * from hanghoa where mahh=$mahh";
        // ai thực hiện câu select=> query hoặc prepare
        $db = new connect();
        $results = $db->getInstance($select);
        return $results;
    }


    // getLisstDetail chứa thông tin của 1 sản phẩm lấy từ database về 
    // dùng prepare
    public function getListDetailNhom($nhom)
    {
        $select = "select * from hanghoa where nhom=:nhom";
        // ai thực hiện câu truy vấn này query và preapre
        $db = new connect();
        $stm = $db->getListP($select);
        // muốn preapre đc thì phải 
        $stm->bindParam(':nhom', $nhom);
        // $stm->bindValue(':nhom',$nhom);
        $stm->execute();
        return $stm;
    }

    public function getListHangHoaAllPage($start, $limit)
    {
        $db = new connect();
        //yêu cầu thực thi câu truy vấn
        $select = "select * from hanghoa limit " . $start . "," . $limit;
        $result = $db->getList($select);
        return $result;
    }

    //phương thức tìm kiếm sp, dạng cơ bản $querry
    function getinfSearch($tentk)
    {
        $db = new connect();
        //b2:yêu cầu thực thi câu truy vấn
        $select = "select * from hanghoa where tenhh like :tenhh";
        $result = $db->execP($select);
        //muốn prepare phải execute
        //trước khi thực thi thì nên ràn ràng buộc về dữ liệu: bindValue(giá trị) hoac bindParam (tham số)
        $name = "%" . $tentk . "%";
        $result->bindParam(':tenhh', $name);
        $result->execute();
        return $result;
    }
}
