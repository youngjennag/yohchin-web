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

$sql1 = 
  "UPDATE shopping_cart SET flg_del = '1'
  WHERE id = '".$_GET["id"]."' AND login_id = '".$_SESSION["login_id"]."'";

  $stmh1 = $pdo ->prepare($sql1);
  $stmh1 ->execute();

  require_once("./shopping_cart.php");
?>