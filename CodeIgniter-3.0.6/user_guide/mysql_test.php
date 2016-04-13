<?php
$con = mysql_connect("127.0.0.1","dayoo_app","dayoo_app");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
$dbres=mysql_select_db("server_data", $con); //选择数据库
var_dump($dbres);
    $q = "SELECT * FROM dayoo_app"; //SQL查询语句
    mysql_query("SET NAMES utf8");
    #mysql_query("SET NAMES gbk");
    $rs = mysql_query($q); //获取数据集
var_dump($rs);
$arr=mysql_fetch_array($rs);
var_dump($arr);

?>
