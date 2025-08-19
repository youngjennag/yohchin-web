<?php
  $use_for_html = "";
  for ($i=0; $i < 10;$i++){
    $use_for_html .= "<option value=$i>$i</option>";
  }
  require_once(".\html\inc_all_select_for.php");
  if(isset($_POST["num"])){
    if($_POST["num"] == 0){
      echo "商品の購入に失敗しました。";
    }else{
      echo $_POST["num"]."個の商品を購入しました。";
    }
  }
?>