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
    if(isset($_POST["fruit"])){// 商品を選ぶ
      $sql2 = "SELECT id,name,price,quantity from shopping WHERE flg_del = '0' AND id = ".$_POST["fruit"]."";
      $stmh2 = $pdo ->prepare($sql2);
      $stmh2 ->execute();

      // 個数をチェックする
      foreach($stmh2 as $val){
        if($val["quantity"] < $_POST["buy_quantity"]){
          $error = "在庫数以下しか購入できません";
          require_once("./html/inc_all_select_shopping.php");
          exit();
        }else{
          $_SESSION["fruit_id"] = $_POST["fruit"];
          $_SESSION["buy_quantity"] = $_POST["buy_quantity"];
          $_SESSION["max_quantity"] = $val["quantity"];
          $_SESSION["fruit_name"] = $val["name"];
          $_SESSION["fruit_price"] = $val["price"];
          $_SESSION["price_all"] = $_POST["buy_quantity"]*$val["price"];

          $sql3 =  "INSERT INTO kadai7.shopping_cart(login_id,fruit_name,price,quantity,price_all,flg_del) 
          VALUES('".$_SESSION["login_id"]."','".$_SESSION["fruit_name"]."','".$_SESSION["fruit_price"]."','".$_SESSION["buy_quantity"]."','".$_SESSION["price_all"]."','0')";

          $stmh3 = $pdo ->prepare($sql3);
          $stmh3 ->execute();

          require_once("./shopping_cart.php");
          exit();
        }
      }

    }else{
      $error = "商品を選んでください";
    }

  }
  
}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

require_once("./html/inc_all_select_shopping.php");
exit();


?>