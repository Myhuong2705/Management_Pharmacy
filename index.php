<!DOCTYPE html>
<html lang="en">

<head>
  <title>Hiệu thuốc</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="home/main.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <!-- or -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

</head>

<?php
    $bien_bao_mat="co";
    include("db_connect.php");  
    include("Home/xac_dinh_dang_nhap.php");
    include("Home/ham.php");
    if(isset($xac_dinh_dang_nhap))
    {
        if($xac_dinh_dang_nhap=="co")
        {
             include("Home/xu_ly_post_get.php");
        } 
        elseif($xac_dinh_dang_nhap=="nv")  
        {
            include("Home/xu_ly_post_get.php");
        } 
    }
?>

<style type="text/css">
    body{
        background-color: #f2f2f2;
    }
</style>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Quản trị</title>
    </head>
    <body>
        <?php
            if(!isset($xac_dinh_dang_nhap))
            {
                include("Home/Login.php");
            }
            else
            {
                if($xac_dinh_dang_nhap=="co")
                {    
                    include("Home/index.php");

                }
                elseif ($xac_dinh_dang_nhap=="nv")
                {    
                    include("Home/indexx.php");
                }
            }
        ?>
    </body>
</html>