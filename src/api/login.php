<?php
    // 引入其他php文件
    include 'connect.php';


    /*
        接口：获取商品详细信息
     */
    
    $userName = isset($_GET['userName']) ? $_GET['userName'] : null;
    $passWord = isset($_GET['passWord']) ? $_GET['passWord'] : null;

    // md5加密
    $password = md5($password);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    //验证内容是否与数据库的记录吻合。这个 AND 查询已经确认全匹配
    $sql = "SELECT * FROM user WHERE (username='$userName')";

    //执行上面的sql语句并将结果集赋给result。
    $result = $conn->query($sql);

    //判断结果集的记录数是否大于0
    if ($result->num_rows > 0) {

        // 使用查询结果集
        // 返回数组
        $row = $result->fetch_row();

        if($row[1] == $passWord ){
            echo "登录成功";
        }else{
             echo "用户名或密码有误";
        }

    }else{
        echo "该用户名未注册";
    }

    //释放查询结果集，避免资源浪费
    $result->free();

    // 关闭数据库，避免资源浪费
    $conn->close();
?>