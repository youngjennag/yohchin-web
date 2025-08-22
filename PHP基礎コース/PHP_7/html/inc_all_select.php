<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <p>登録されたデータの表示</p>
  <form action="select.php" method="post">
      <p>ID：
        <?php
          echo $id;
        ?>
      </p>
      <p>PW：
        <?php
          echo $pw;
        ?>
      </p>
      <p>名前：
        <?php
          echo $name;
        ?>
      </p>
      <p>住所：
        <?php
          echo $address;
        ?>
      </p>
    <!-- ボタンを押したときに値を送る -->
    <input type="hidden" name="botton" value="1"> 
    <input type="submit" value="表示">
  </form>
</body>
</html>