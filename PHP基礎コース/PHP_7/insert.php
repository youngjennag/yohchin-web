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
  echo "接続に成功しました";
}

try{
  if(!empty($_POST["pw"])&& !empty($_POST["name"])&& !empty($_POST["address"])){
    $sql = "INSERT INTO kadai7.1ststep(password,name,address)
    VALUES('".$_POST["pw"]."','".$_POST["name"]."','".$_POST["address"]."')
    ";
  $stmh = $pdo->prepare($sql);
  $stmh->execute();
  echo "登録完了";
  }

}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

require_once("./html/inc_all_insert.php");
exit();

?>