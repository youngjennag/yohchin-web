<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>データを登録してください</p>
  <form action="login_insert.php" method="post">
    <p>お名前を入力してください</p>
    <input type="text" name="name">
    <?php
      echo $error;
    ?>
    <p>IDを入力してください</p>
    <input type="text" name="login_id">
    <?php
      echo $error2;
    ?>
    <p>パスワードを入力してください</p>
    <input type="password" name="password">
    <?php
      echo $error3;
    ?>
    <p><input type="submit" value="登録"></p>
    <input type="hidden" name="mode" value="1">
    <?php
      echo $error4;
    ?>
    <?php
      echo $error5;
    ?>
    <button type="button" onclick="location.href='login.php';">ログインページ</button>
  </form>

</body>
</html>