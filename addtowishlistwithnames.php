<?php
ob_start();
session_start();
require_once 'config/connect.php';
$uid = $_SESSION['customerid'];
if(!isset($_SESSION['customer']) & empty($_SESSION['customer'])){
		header('location: login.php');
	}
if(isset($_GET['listid']) & !empty($_GET['listid'])){
	$pid = $_GET['listid'];
	$listname = $_GET['listname'];
	if ($listname === "") $listname = $_GET['newlistname']; 
/*	if ($uid != 0)*/
	echo $sql = "INSERT INTO wishlistname (pid, uid, nome) VALUES ('$pid', $uid, '$listname')";
	$res = mysqli_query($connection, $sql);
	if($res){
		header('location: wishlist.php');
	}
}else{
	header('location: wishlist.php');
}

?>