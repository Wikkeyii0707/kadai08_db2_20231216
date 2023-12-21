<?php
//共通に使う関数を記述
//XSS対応（ echoする場所で使用！それ以外はNG ）
function h($str) {
    return htmlspecialchars( $str ,ENT_QUOTES);
  }

function connectDB() {
    $param = 'mysql:dbname=gs_db_kadai;host=localhost';
    try {
        $pdo = new PDO($param, 'root', '');
        return $pdo;

    } catch (PDOException $e) {
      exit('DBConnectError:'.$e->getMessage());
    }
}

function redirect($filename){
  //*** function化する！*****************
  header("Location: $filename");
  exit();
}