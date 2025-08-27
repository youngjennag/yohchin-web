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
      $sql = "SELECT id,name,price,quantity from shopping WHERE flg_del = '0'";
      $stmh = $pdo ->prepare($sql);
      $stmh ->execute();

      foreach($stmh as $val){
        $view .= "<p><input type='radio' name='fruit' value=".$val["id"].">"."商品名：".$val["name"].""; 
        $view .= " 値段：".$val["price"]."円";
        $view .= " 残個数：".$val["quantity"]."個</p>";
      }

      for($i=0;$i<=20;$i++){
        $select .= "<option value=".$i.">".$i."個</option>";
      }

  if(isset($_POST["mode"])){
      $sql = "SELECT id,name,sex,grade from school WHERE flg_del = '0'";
      $stmh = $pdo ->prepare($sql);
      $stmh ->execute();

      foreach($stmh as $val){
        $view .= "<p> ID：".$val["id"]."</p>";
        $view .= "<p> 名前：".$val["name"]."</p>";
        if($val["sex"] == '1'){
          $view .= "<p> 性別：男</p>";
        }else {
          $view .= "<p> 性別：女</p>";
        }
        $view .= "<p> 学年：".$val["grade"]."</p>";
      }
  }
  
}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

require_once("./html/inc_all_select_flg.php");
exit();


?>