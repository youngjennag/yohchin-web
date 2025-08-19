<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>好きな料理をすべて選択してください。</p>
  <form action="checkbox.php" method="post">
    <?php
      echo $use_for_html;
    ?>
  <input type="submit" value="決定">
  </form>
  
</body>
</html>