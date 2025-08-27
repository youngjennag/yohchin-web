<?php
session_start();
$host = "localhost";
$db = "kadai7";
$charset = "utf8";
$user = "root";
$pass = "root";
$view = "";
$limit = 20;
$error = "";

$options = [
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
  PDO::ATTR_EMULATE_PREPARES => false,
];

try {
  $pdo = new PDO(
    "mysql:host=$host;dbname=$db;charset=$charset",
    $user,
    $pass,
    $options
  );
  // echo "接続に成功しました";
} catch (PDOException $Exception) {
  die('接続エラー:' . $Exception->getMessage());
  echo "接続に失敗しました";
}

try {
  if (isset($_POST["mode"])) {
    if (!empty($_POST["login_id"]) && !empty($_POST["password"])) {
      $login_id = htmlspecialchars($_POST["login_id"],ENT_QUOTES,"UTF-8");
      $password = htmlspecialchars($_POST["password"],ENT_QUOTES,"UTF-8");

      $sql = "SELECT * from login WHERE flg_del = '0'
      AND login_id = '".$login_id."'
      AND password = '".$password."'" ;

      $stmh = $pdo->prepare($sql);
      $stmh->execute();
      foreach($stmh as $val){
        $sql_id = $val["login_id"];
        $sql_pass = $val["password"];
        $sql_name = $val["name"];
      }

      if(!empty($sql_id)){
        $_SESSION["login_id"] = $sql_id;
        $_SESSION["password"] = $sql_pass;
        $_SESSION["name"] = $sql_name;

        require_once("./top.php");
        exit();
      }else {
        $error = "id又はパスワードが違います";
        require_once("./html/inc_all_login.php");
        exit();
      }

    } else {
      $error3 = "すべて入力してください";
        require_once("./html/inc_all_login.php");
        exit();
    }
  }
} catch (PDOException $Exception) {
  die('接続エラー:' . $Exception->getMessage());
}

require_once("./html/inc_all_login.php");
exit();
  
?>