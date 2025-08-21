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
    <p>パースワードを入力してください</p>
    <input type="text" name="pw">
    <p>お名前を入力してください</p>
    <input type="text" name="name">
    <p>住所を入力してください</p>
    <input type="text" name="address">
    <input type="submit" value="確定">
  </form>
</body>
</html>