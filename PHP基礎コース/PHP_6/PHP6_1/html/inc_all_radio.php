<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>お好きな辛さのカレーを選択してください。</p>
  <form action="output_radio.php" method="post">
    <p><input type="radio" name="curry" value="甘口" checked>甘口</p>
    <p><input type="radio" name="curry" value="中辛">中辛</p>
    <p><input type="radio" name="curry" value="辛口">辛口</p>
    <input type="submit" value="確定">
  </form>
</body>
</html>