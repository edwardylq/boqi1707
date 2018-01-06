<?php
    include "connect.php";

    $id = isset($_GET['id']) ? $_GET['id'] :null;

    $sql  = "DELETE FROM car where id= $id";
    $conn->query($sql);
    $conn->close();

?>