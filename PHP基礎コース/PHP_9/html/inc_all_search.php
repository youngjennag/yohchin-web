<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>フリーワード検索</p>
  <form action="search.php" method="post">
    <input type="text" name="keyword">
    <input type="hidden" name="mode" value="1">
    <input type="submit" value="検索">
    <p>
      <?php
        echo $search;
      ?>
    </p>
  </form>
</body>
</html>