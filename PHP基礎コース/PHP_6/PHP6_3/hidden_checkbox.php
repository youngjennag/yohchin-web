<?php
  $cooking = array("日本料理","韓国料理","イタリア料理","フランス料理","タイ料理","メキシコ料理","中華料理");
  $use_for_html = "";
  foreach($cooking as $val){
    $use_for_html .= "<p>";
    $use_for_html .=  "<input type=checkbox name = cooking[] value=".$val.">";
    $use_for_html .= $val;
    $use_for_html .= "</p>";
  }

  require_once(".\html\in_all_hidden_checkbox.php");
  if(isset($_POST["cooking"])){
    echo "選択された料理は"."<br>";
    foreach($_POST["cooking"] as $val){
      echo $val."<br>";
    }
    echo "です。";
  }elseif(isset($_POST["id"])&&!isset($_POST["cooking"])){
    echo "何も選択されていません";
  }
?>