<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>お好きな辛さのカレーを選択してください。</p>
  <form action="output_select.php" method="post">
    <select name="curry">
      <option value="甘口" selected>甘口</option>
      <option value="中辛" >中辛</option>
      <option value="辛口" >辛口</option>
    </select>
    <input type="submit" value="確定">
  </form>

</body>
</html>