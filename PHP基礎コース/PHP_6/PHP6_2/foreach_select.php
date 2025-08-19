<?php
  $price = array("600円"=>"牛肉","350円"=>"豚肉","240円"=>"鶏肉","390円"=>"鴨肉","420円"=>"馬肉");
  $use_for_html = "";

  foreach($price as $key => $val){
    $use_for_html .= "<option value=$key>$val</option>";
  }

  require_once(".\html\inc_all_foreach_select.php");
  if($_POST["meet"]){
    echo "購入した".$price[$_POST["meet"]]."の値段は".$_POST["meet"]."です。";
  }
?>