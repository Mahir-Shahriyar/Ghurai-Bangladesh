<?php
error_reporting(0);
//require_once('../db_connect.php');
$connect = mysqli_connect("localhost", "root", "", "ghuraibangladesh");
$status = 'OK';
$content = [];

if (mysqli_connect_errno()) {
	$status = 'ERROR';
	$content = mysqli_connect_error();
}

$query = "SELECT complain, person_name, person_phone, cust_email FROM `complainbox` JOIN `person` ON cust_email = person_email";

if ($result = mysqli_query($connect, $query)) {
    /* fetch associative array */
    while ($row = mysqli_fetch_assoc($result)) {
        $content[] = $row;	// push value to array
    }
}

$data = ["status" => $status, "content" => $content];

header('Content-type: application/json');
echo json_encode($data); // get all products in json format.    
?>
