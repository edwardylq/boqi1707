<?php

    // 引入其他php文件
    include 'connect.php';

    $id = isset($_GET['id']) ? $_GET['id'] : null;
    $imgurl = isset($_GET['imgurl']) ? $_GET['imgurl'] : null;
    $price = isset($_GET['price']) ? $_GET['price']: null;
    $details = isset($_GET['details']) ? $_GET['details'] : null;
    // echo $details;
    // 思路:先查询数据库中是否存在当前id的商品，有则数量加num个，无则写入一条新的记录

    // // 编写sqi语句
    $sql = "select * from car where id = $id";

    // //执行sql语句，获取查询结果集
    $result = $conn->query($sql);
    
    if($result->num_rows > 0){
       
        $row = $result->fetch_row();
        $row[4] = $row[4]+1;
   
    //     // 修改表中的数据。
    //     // 格式：update 表名 set 字段=新值,… where 条件;
        $sql = "update car set num ='$row[4]' where id = '$id'";
        $conn->query($sql);
        $conn->close();
        echo "数量加1";
    }else{
        $sql = "INSERT INTO car (id,details,price,imgurl,num)
        VALUES ('$id','$details','$price','$imgurl','1')";

        //执行sql语句，获取查询结果集
        $conn->query($sql);
        $conn->close();
        if ($conn->query($sql) === TRUE) {
            echo "新记录插入成功";
        }else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    };

?>