<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>データを登録してください</p>
  <form action="insert.php" method="post">
    <p>お名前を入力してください</p>
      <input type="text" name="name">
        <?php
          echo $error;
        ?>
    <p>性別を選択してください</p>
      <input type="radio" name="sex" value="1">男
      <input type="radio" name="sex" value="2">女
    <p>学年を選択してください</p>
      <input type="radio" name="grade" value="1">一年生
      <input type="radio" name="grade" value="2">二年生
      <input type="radio" name="grade" value="3">三年生
    <p><input type="submit" value="登録"></p>
      <input type="hidden" name="mode" value="1">
      <?php
        echo $view;
      ?>
  </form>
</body>
</html>