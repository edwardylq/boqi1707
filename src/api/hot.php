<?php

    // 引入其他php文件
    include 'connect.php';

    /*
        接口：获取列表数据
     */
    
    $cate = isset($_GET['cate']) ? $_GET['cate'] : null;
    $pageNo = isset($_GET['pageNo']) ? $_GET['pageNo'] : 1;


    // 编写sql语句
    $sql = "select * from production where category = '$cate'";

    // 执行sql语句
    // query()
    // 得到一个：查询结果集
    $result = $conn->query($sql);

    // 使用查询结果集
    // 返回数组
    $row = $result->fetch_all(MYSQLI_ASSOC);

    // 火爆商品每页展示6条
    $res = array(
        'data'=>array_slice($row, ($pageNo-1)*6,6)
    );
    echo json_encode($res,JSON_UNESCAPED_UNICODE);

    // 释放查询结果集，避免资源浪费
    $result->free();

    // 关闭数据库，避免资源浪费
    $conn->close();
?>