<?php
  $array = array("color"=>array("red"=>"赤","blue"=>"青"),"number"=>array("いち","に"));

  echo $array["color"]["red"]."\n";
  echo $array["color"]["blue"]."\n";
  echo $array["number"][0]."\n";
  echo $array["number"][1];
?>