<?php

    // 引入其他php文件
    include 'connect.php';

    /*
        接口：获取列表数据
     */
    
    $pageNo = isset($_GET['pageNo']) ? $_GET['pageNo'] : 1;


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
        'data'=>array_slice($row, ($pageNo-1)*8,8),
    );

    echo json_encode($res,JSON_UNESCAPED_UNICODE);
?>