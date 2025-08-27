<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>データを登録してください</p>
  <form action="insert_shopping.php" method="post">
    <p>商品の名前を入力してください</p>
      <input type="text" name="name">
    <p>商品の値段を入力してください</p>
      <input type="text" name="price">
    <p>個数を入力してください</p>
      <input type="text" name="quantity">
    <p><input type="submit" value="登録"></p>
      <input type="hidden" name="hidden" value="1">
      <?php
        echo $alert;
      ?>
  </form>
</body>
</html>