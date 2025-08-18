<?php
$number = 0;
while ($number < 5) {
  $number = $number + 1;
  if ($number == 3) {
    echo $number . "のehco処理はスキップされます。\n";
    continue;
  }
  echo "$number=" . $number . "\n";
}
