<?php
$action = "products";
if (isset($_GET['act'])) {
    $action = $_GET['act']; //$action=detail
}
switch ($action) {
    case 'products':
        include './View/products.php';
        break;
    case 'detail':
        include './View/sanphamchitiet.php';
        break;
    case 'comment':
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $idmhh = $_POST['txtmahh'];
            $noidung = $_POST['comment'];
            $makh = $_SESSION['makh'];
        }
        $u = new user();
        $u->insertComment($idmhh, $makh, $noidung);
        include './View/sanphamchitiet.php';
        break;
}
