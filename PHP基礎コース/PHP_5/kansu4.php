<?php
  $array_color = array("イチゴ"=>"赤","レモン"=>"黄","キャベツ"=>"緑","リンゴ"=>"赤");
  $delete_same = array_unique($array_color);

  echo "重複した値を取り除いていないときの配列。\n";
  print_r($array_color);
  echo "重複した値を取り除いたときの配列。\n";
  print_r($delete_same);
?>