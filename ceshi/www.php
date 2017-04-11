<?php
	include("public.php");
	
	
	$sql_name = "select * from tp_keshi";
	
	$info_name = zengshangaicha($sql_name);
	
	echo json_encode($info_name);
	