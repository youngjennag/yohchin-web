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

$sql = "SELECT id,fruit_name,price,quantity,price_all from shopping_cart WHERE flg_del = '0' AND login_id =".$_SESSION["login_id"]."";
  $stmh = $pdo ->prepare($sql);
  $stmh ->execute();

  foreach($stmh as $val){
    $view2 .= "商品名：".$val["fruit_name"];
    $view2 .= $val["price"]."円";
    $view2 .= $val["quantity"]."個";
    $view2 .= "<input type=\"button\" value=\"消去\" onclick=\"location.href='delete_shopping_cart.php?id=".$val["id"]."'\"><br>";

    $all_price = intval($all_price) + intval($val["price_all"]);

  }

  require_once("./html/inc_all_shopping_cart.php");
?>