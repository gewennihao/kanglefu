<?php
	include("public.php");

	$shuju2 = $_GET["shuju2"];
	$sql_name = "select name_keshi from tp_fuwu where p_id = '$shuju2'";
	 // $sql_name = "select * from tp_fuwu";

	
	$info_name = zengshangaicha($sql_name);
	
	echo json_encode($info_name);
