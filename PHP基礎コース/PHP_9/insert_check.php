<?php
$host = "localhost";
$db = "kadai7";
$charset = "utf8";
$user = "root";
$pass = "root";
$view = "";
$limit = 11;
$error = "";

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
    if(!empty($_POST["name"]) && !empty($_POST["sex"]) && !empty($_POST["grade"])){
      mb_regex_encoding("UTF-8");
      if(preg_match("/^[a-zA-Z0-9ぁ-んァ-ヶ一-龠々ー]+$/u",$_POST["name"])){
        $_POST["name"] = $_POST["name"];
      }else {
        $error = "記号を使わないでください";
        require_once("./html/inc_all_insert_check.php");
        exit();
      }

      if(mb_strlen($_POST["name"]) >= $limit){
        $error = "入力できる文字数は10文字までです";
        require_once("./html/inc_all_insert_check.php");
        exit();
      }

      $sql =  "INSERT INTO kadai7.school(name,sex,grade,flg_del) 
      VALUES('".$_POST["name"]."','".$_POST["sex"]."','".$_POST["grade"]."','0')";

      $stmh = $pdo ->prepare($sql);
      $stmh ->execute();
      $view = "登録完了";

    }else{
      echo "すべて入力してください";
      require_once("./html/inc_all_insert_check.php");
      exit();
    }
  }
  
}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

require_once("./html/inc_all_insert_check.php");
exit();

  
?>