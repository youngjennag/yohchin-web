<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>カートの中身</p>
  <form action="buy_shopping.php" method="post">
    <!-- <?php echo $_SESSION["fruit_name"] ?>：
    <?php echo $_SESSION["fruit_price"] ?>円
    <?php echo $_SESSION["buy_quantity"] ?>個<br>
    合計額：<?php echo $_SESSION["price_all"] ?>円 -->

    <?php
      echo $view2;
    ?>
    合計：
    <?php echo $all_price;?>円

  <input type="submit" value="購入">
  <input type="hidden" name="mode" value="1">
  </form>

  <button type="button" onclick="location.href='select_shopping.php';">商品一覧</button>

</body>
</html>