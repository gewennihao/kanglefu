<?php 
	include("public.php");
	
	//查看列表
	$info = zengshangaicha($sql);
	
	
	echo json_decode($info);
	
?>