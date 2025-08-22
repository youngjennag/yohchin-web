<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>データを更新してください</p>
  <form action="update.php" method="post">
    <p>IDを入力してください</p>
    <input type="text" name="id">
    <p>パースワードを入力してください</p>
    <input type="text" name="pw">
    <p>お名前を入力してください</p>
    <input type="text" name="name">
    <p>住所を入力してください</p>
    <input type="text" name="address">
    <p>性別を選択してください</p>
      <input type="radio" name="sex" value="1">男
      <input type="radio" name="sex" value="2">女
    <input type="hidden" name="hidden"　value="1">
    <input type="submit" value="更新">
  </form>
</body>
</html>