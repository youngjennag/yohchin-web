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

}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
  echo "接続に失敗しました";
}

try{  
  $sql = "SELECT * FROM convenience_store RIGHT JOIN convenience_store2 ON convenience_store.id = convenience_store2.id";
  $stmh = $pdo -> prepare($sql);
  $stmh -> execute();

  foreach($stmh as $val){
    $view .= $val["id"].":";
    $view .= $val["type"]."は";
    $view .= $val["name"]."<br>";
  }
  echo $view;

}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

?>