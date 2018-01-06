<?php
    include "connect.php";

    // 判断注册用户操作:获取前端传到后端的用户名
    $username = isset($_GET['username']) ? $_GET['username'] : '';


    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    //验证内容是否与数据库的记录吻合。这个 AND 查询已经确认是全匹配
    $sql = "SELECT * FROM user WHERE (username='$username')";

    //执行上面的sql语句并将结果集赋给result。
    $result = $conn->query($sql);

    //判断结果集的记录数是否大于0
    if ($result->num_rows > 0) {
        echo 'no';
    }else{
        echo "yes";
    }
        //释放查询结果集，避免资源浪费
    $result->free();

    // 关闭数据库，避免资源浪费
    $conn->close();
?>