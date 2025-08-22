<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>在学生の表示</p>
  <form action="select_flg.php" method="post">
    <?php
      echo $view;
    ?>
    
    <input type="hidden" name="botton" value="1">
    <input type="submit" value="表示">
  </form>
  
</body>
</html>