<?php

	// 引入其他php文件
	include 'connect.php';

	/*
		接口：获取列表数据
	 */
	
	$cate = isset($_GET['goods']) ? $_GET['goods'] : null;
	$pageNo = isset($_GET['pageNo']) ? $_GET['pageNo'] : 1;
	$qty = isset($_GET['qty']) ? $_GET['qty'] : 10;//10


	// 编写sql语句
	$sql = "select * from production";

	// 执行sql语句
	// query()
	// 得到一个：查询结果集
	$result = $conn->query($sql);



	// 使用查询结果集
	// 返回数组
	$row = $result->fetch_all(MYSQLI_ASSOC);

	// // 把数组转换成json字符串
	// $res = json_encode($row,JSON_UNESCAPED_UNICODE);


	$res = array(
		'data'=>array_slice($row, ($pageNo-1)*$qty,$qty),
		'total'=>count($row)
	);

	echo json_encode($res,JSON_UNESCAPED_UNICODE);
?>