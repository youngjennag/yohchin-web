<?php
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
    if (!empty($_POST["name"]) && !empty($_POST["login_id"]) && !empty($_POST["password"])) {
      $_POST["name"] = htmlspecialchars($_POST["name"],ENT_QUOTES,"UTF-8");
      $_POST["login_id"] = htmlspecialchars($_POST["login_id"],ENT_QUOTES,"UTF-8");
      $_POST["password"] = htmlspecialchars($_POST["password"],ENT_QUOTES,"UTF-8");

      // mb_regex_encoding("UTF-8");
      if (preg_match("/^[a-zA-Z0-9ぁ-んァ-ヶ一-龠々ー 　]+$/u", $_POST["name"])) {
        $name = preg_replace("/[ |　]/","",$_POST["name"]);
      } else {
        $error = "記号を使わないでください";
        require_once("./html/inc_all_login_insert.php");
        exit();
      }
      
      if (preg_match("/^[a-zA-Z0-9 　]+$/u", $_POST["login_id"])) {
        $login_id = preg_replace("/[ |　]/","",$_POST["login_id"]);
      } else {
        $error2 = "英数字のみ入力してください";
        require_once("./html/inc_all_login_insert.php");
        exit();
      }

      if (preg_match("/^[a-zA-Z0-9 　]+$/u", $_POST["password"])) {
        $password = preg_replace("/[ |　]/","",$_POST["password"]);
      } else {
        $error3 = "英数字のみ入力してください";
        require_once("./html/inc_all_login_insert.php");
        exit();
      }

      if (mb_strlen($name) > $limit || mb_strlen($login_id) > $limit ||mb_strlen($password) > $limit) {
        $error = "入力できる文字数は20文字までです";
        require_once("./html/inc_all_login_insert.php");
        exit();
      }

      $sql =  "INSERT INTO kadai7.login(login_id,password,name,flg_del) 
      VALUES('".$login_id."','".$password."','".$name."','0')";

      $stmh = $pdo->prepare($sql);
      $stmh->execute();
      $view = "登録完了";
    } else {
      $view = "すべて入力してください";
      require_once("./html/inc_all_login_insert.php");
      exit();
    }
  }
} catch (PDOException $Exception) {
  die('接続エラー:' . $Exception->getMessage());
}

require_once("./html/inc_all_login_insert.php");
exit();
  
?>