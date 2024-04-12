<?php
$action = "contact";
if (isset($_GET['act'])) {
    $action = $_GET['act']; //$action=detail
}
switch ($action) {
    case 'contact':
        include './View/contact.php';
        break;
}
