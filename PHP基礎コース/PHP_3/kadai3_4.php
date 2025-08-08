<?php
  $sports = array(array("baseball","tennis"),array("soccer","basketball"),array("volleyball","rugby"));

  if ($sports[2][0] == "volleyball") {
    echo "夢は".$sports[2][0]."選手です。";
    $dream = "夢は".$sports[2][0]."選手です。";
    if ($dream == "夢はvolleyball選手です。") {
      echo "\n夢はあきらめなければかないます。";
    }
  }
?>