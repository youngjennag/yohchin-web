<?php

session_start();

  if(isset($_SESSION["name"])){
    session_destroy();
    echo "ログアウトしました"; 
  }else{
    echo "すでにログアウトしています";
  }
  require_once("./login.php");
?>