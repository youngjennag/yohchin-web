<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>マイページ</p>
  <form action="logout.php" method="post">
    こんにちは
    <?php
      echo $success;
    ?>
    <input type="submit" value="ログアウト">
  </form>
</body>

</html>