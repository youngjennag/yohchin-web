<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>商品一覧</p>
  <form action="select_shopping.php" method="post">
    <?php
      echo $view;
    ?>
    <select name="buy_quantity">
      <?php
        echo $select;
      ?>
    </select>
    <input type="submit" value="カート">
      <?php
        echo $error;
      ?>
    <input type="hidden" name="mode" value="1">
  </form>
</body>
</html>