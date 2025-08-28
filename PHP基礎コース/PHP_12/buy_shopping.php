<?php
session_start();
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
  if(isset($_POST["mode"])){
      $sql = "UPDATE shopping SET quantity = '".$_SESSION["max_quantity"]."'-'".$_SESSION["buy_quantity"]."'
      WHERE id = '".$_SESSION["fruit_id"]."'";
      $stmh = $pdo ->prepare($sql);
      $stmh ->execute();

      echo "購入しました";
      $_SESSION["fruit_id"]   = "";
      $_SESSION["buy_quantity"]  = "";
      $_SESSION["max_quantity"]  = "";
      $_SESSION["fruit_name"]  = "";
      $_SESSION["fruit_price"] = "";
      $_SESSION["price_all"] = "";

      require_once("./shopping_cart.php");
  }
  
}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

require_once("./html/inc_all_shopping_cart.php");
exit();

?>