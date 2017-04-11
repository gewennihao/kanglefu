<?php
	include("public.php");
	
	$keshi = $_POST{"firstPerson"};
	$content = $_POST{"firstPerson_one"};
	$other = $_POST{"other"};
	
	$pay_number = $_POST{"pay_number"};
	$create_time = date('Y-m-d H:i:s',time());
	$sql = "insert into tp_caiwu(pay_number,keshi,other,content,create_time) value('$pay_number','$keshi','$other','$content','$create_time')";
	$info = zengshangaicha($sql);
	// echo $_POST["other"]."+".$_POST["pay_number"];
	// echo $_POST["keshi"];
	// echo $_POST["content"];
	