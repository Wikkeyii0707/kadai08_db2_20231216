<?php
//1.  DB接続します
// function h($str) {
//   return htmlspecialchars( $str ,ENT_QUOTES);
// }

require_once('funcs.php');


// try {
//   //Password:MAMP='root',XAMPP=''
//   $pdo = new PDO('*******:dbname=****;charset=utf8;host=*****','****','*****');
// } catch (PDOException $e) {
//   exit('DBConnectError'.$e->getMessage());
// }
// try {
//   //ID:'root', Password: xamppは 空白 ''
//   $pdo = new PDO('mysql:dbname=gs_db_kadai;charset=utf8;host=localhost','root','');
// } catch (PDOException $e) {
//   exit('DBConnectError:'.$e->getMessage());
// }
$pdo = connectDB();

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_kadai_table");
$status = $stmt->execute();

//３．データ表示
$view='';
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit('SQLError:' . print_r($error, true));

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){

    // $view .="<p>";
    // $view .='<a href="detail.php">';
    // $view .= h($result['reg_date'], ENT_QUOTES)  . h($result['book_name'] ). h($result['book_url'] . h($result['book_comment']));
    // //  $view .= $result['date'] . ENT_QUOTES  . $result['name'] . $result['content'] . $result['email'];
    // $view .="</a>";
    // $view .="</p>";

    $view .= '<p>';
    $view .= '<a href="detail.php?id=' . $result['id'] . '">';
    $view .= $result['reg_date'] . '：' . $result['book_name'];
    $view .= '</a>';



    $view .= '<a href="detail.php?id=' . $result['id'] . '">';
    $view .= '</a>';

    $view .= '　';
    $view .= '<a href="delete.php?id=' . $result['id'] . '">';
    $view .= '<削除>';
    $view .= '</a>';
    $view .= '</p>';
  }

}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>フリーアンケート表示</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="index.php">データ登録</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?= $view ?></div>
</div>
<!-- Main[End] -->

</body>
</html>
