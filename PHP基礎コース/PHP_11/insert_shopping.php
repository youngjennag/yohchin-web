<?php
$host = "localhost";
$db = "kadai7";
$charset = "utf8";
$user = "root";
$pass = "root";

$options = [
  PDO::ATTR_ERRMODE =>PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE =>PDO::FETCH_ASSOC,
  PDO::ATTR_EMULATE_PREPARES =>false,
];

try {
  $pdo = new PDO(
    "mysql:host=$host;dbname=$db;charset=$charset",
    $user,$pass,$options
  );
  echo "接続に成功しました";

}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
  echo "接続に失敗しました";
}

try{
  if(isset($_POST["hidden"])){
    if(!empty($_POST["name"]) && !empty($_POST["price"]) && !empty($_POST["quantity"])){
      $sql =  "INSERT INTO kadai7.shopping(name,price,quantity,flg_del) 
      VALUES('".$_POST["name"]."','".$_POST["price"]."','".$_POST["quantity"]."','0')";

      $stmh = $pdo ->prepare($sql);
      $stmh ->execute();
      echo "登録完了";

    }else{
      echo "すべて入力してください";
      require_once("./html/inc_all_insert_shopping.php");
      exit();
    }
  }
  
}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

require_once("./html/inc_all_insert_shopping.php");
exit();
  
?>