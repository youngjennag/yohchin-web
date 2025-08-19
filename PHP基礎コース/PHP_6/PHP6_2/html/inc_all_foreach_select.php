<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>購入する商品を選択してください。</p>
  <form action="foreach_select.php" method="post">
    <select name="meet">
      <?php
        echo $use_for_html;
      ?>
    </select>
    <input type="submit" value="購入">
  </form>

</body>
</html>