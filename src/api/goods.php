<?php
	// 引入其他php文件
	include 'connect.php';


	/*
		接口：获取商品详细信息
	 */
	
	$id = isset($_GET['id']) ? $_GET['id'] : null;

	// 编写sql语句
	$sql = "select * from production where id = '$id'";


	// 执行suseql语句
	// query(
	// 得到一个：查询结果集
	$result = $conn->query($sql);

	// 使用查询结果集
	// 返回数组
	$row = $result->fetch_row();

	// 把数组转换成json字符串
	echo json_encode($row,JSON_UNESCAPED_UNICODE);

	//释放查询结果集，避免资源浪费
    $result->close();

    // 关闭数据库，避免资源浪费
    $conn->close();
?>