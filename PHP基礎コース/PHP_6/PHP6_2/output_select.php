<?php
  require_once("./html/inc_all_select.php");
  if(isset($_POST["curry"])){
    switch($_POST["curry"]){
      case "甘口":
        echo "甘口のカレーです。";
        break;
      case "中辛":
        echo "中辛のカレーです。";
        break;
      case "辛口":
        echo "辛口のカレーです。";
        break;
    }
  }
?>