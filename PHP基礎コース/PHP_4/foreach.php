<?php
$numbers = array("1","2","3");
/* foreach($numbers as $number){
  echo "$number"."\n";
}   */

// for文の場合
for($i=0; $i<count($numbers);$i++){
  $number=$numbers[$i];
  echo $number."\n";
}
?>  