<?php
  for ($ice = 0; $ice < 6; $ice++) {
  echo "お飲み物に氷はおいくついれましょうか？";
  echo $ice."個お願いいたします。\n";
  if ($ice > 4){
    $ice = $ice - 1;
    echo "氷は".$ice."個までしか入れません。\n";
    break;
  }
} 
?>