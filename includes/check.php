<?php


if (!empty($_POST['fullname'])) {
	$username=$_POST['fullname'];
	$con= mysqli_connect('localhost','projec66_mydb','olalekan@28','projec66_carrental');
	if (!$con) {
		die('failed to connect');
	}

	$sql="select * from tblusers where FullName='$username';";

    $result=mysqli_query($con,$sql);
    
	if(mysqli_num_rows($result)){
		$row=mysqli_fetch_assoc($result);
		echo json_encode(['status' => 'success']);
	}
	else
	{
		echo json_encode(['status' => 'error']);
	}
}