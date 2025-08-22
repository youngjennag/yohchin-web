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
    if(!empty($_POST["id"]) && !empty($_POST["pw"]) && !empty($_POST["name"]) && !empty($_POST["address"]) && !empty($_POST["sex"])){
      $sql = 	"UPDATE 1ststep SET password = '".$_POST["pw"]."',
            name = '".$_POST["name"]."',
            address = '".$_POST["address"]."', 
            sex = '".$_POST["sex"]."' 
            WHERE id = '".$_POST["id"]."'";

      $stmh = $pdo ->prepare($sql);
      $stmh ->execute();
      echo "更新完了";

    }else{
      echo "すべて入力してください";
      require_once("./html/inc_all_update.php");
      exit();
    }
  }
  
}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

require_once("./html/inc_all_update.php");
exit();




  
?>