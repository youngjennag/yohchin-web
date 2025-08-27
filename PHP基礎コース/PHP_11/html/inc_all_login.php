<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>ログインIDとパスワードを入力してください</p>
  <form action="login.php" method="post">
    <input type="text" name="login_id">
    <p>
      <?php
      echo $error;
      ?>
    </p>
    <input type="password" name="password">
    <p>
      <?php
      echo $error2;
      ?>
    </p>
    <input type="submit" value="ログイン">
    <input type="hidden" name="mode" value="1">
    <p>
      <?php
      echo $error3;
      ?>
    </p>
    <button type="button" onclick="location.href='login_insert.php';">登録ページ</button>
  </form>
  
</body>
</html>