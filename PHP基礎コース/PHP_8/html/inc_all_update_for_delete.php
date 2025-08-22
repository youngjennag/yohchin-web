<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>ボタンを押すと三年生を消去（卒業）します</p>
  <form action="update_for_delete.php" method="post">
    <p><input type="submit" value="消去（卒業）"></p>
    <input type="hidden" name="hidden" value="1">
  </form>
</body>
</html>