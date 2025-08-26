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

// <script>alert("対策していないと危険だよ")</script>
try{
  $sql = "SELECT id,name,sex,grade from school WHERE flg_del = '0'";
  if(isset($_POST["mode"])){
    if(!empty($_POST["keyword"])){

      $_POST["keyword"] = htmlspecialchars($_POST["keyword"],ENT_QUOTES,"UTF-8");

      if(preg_match("/[ |　]/", $_POST["keyword"],$strNum)){
        $keywd[] = preg_replace("/( |　)/","",$_POST["keyword"]);
      }else{
        $keywd[0] = $_POST["keyword"];
      }

      foreach($keywd as $name){
        if( $name != ""){
          $namekwd[] = " name LIKE '%".$name."%'";
        }
      }
      if(isset($namekwd)){
        for($i=0; $i< count($keywd);$i++){
          $sql .= " AND (";
          $sql .= "$namekwd[$i]";
          $sql .= ")";
        }
      }else{
        echo "空白以外入力してください";
        require_once("./html/inc_all_search.php");
        exit();
      }

      $stmh = $pdo ->prepare($sql);
      $stmh ->execute();
      foreach($stmh as $val){
        $search .= $val['name']."が検索されました";
      }
      if($search ==""){
        $search = $_POST["keyword"]."に該当する結果はありません";
      }
    }
    else{
      $search = "何か文字を入力してください";
    }
  }

}catch(PDOException $Exception){
  die('接続エラー:'.$Exception->getMessage());
}

require_once("./html/inc_all_search.php");
exit();

?>