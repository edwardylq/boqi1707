<?php

    // 引入其他php文件
    include 'connect.php';

    $nickname = isset($_GET['nickname']) ? $_GET['nickname'] : '';
    $password = isset($_GET['password']) ? $_GET['password'] : '';
    $phone = isset($_GET['phone']) ? $_GET['phone'] : '';
    $emails = isset($_GET['emails']) ? $_GET['emails'] : '';

    // md5加密
    $password = md5($password);
    
    if ($emails == ''){
        $sql = "INSERT INTO user (username,password,phone)
        VALUES ('$nickname','$password','$phone')";
    }else{
        $sql = "INSERT INTO user (username,password,phone,email)
        VALUES (md5($password),'$nickname','$password','$phone', '$emails')"; 
    }
   
    if ($conn->query($sql) === TRUE) {
        echo "新记录插入成功";
    }else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    
?>