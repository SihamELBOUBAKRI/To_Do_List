<?php
session_start();
 $cn = new PDO("mysql:host=localhost;dbname=ToDoList", "root", "");

 if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['text'])&& $_POST['text']!="") {
        $text = $_POST['text'];
        $sql = $cn->prepare("INSERT INTO tasks (text, date) VALUES (?, NOW())");
        $sql->execute([$text]);
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'GET'  && isset($_GET['del']) ){
    $id = $_GET["del"];
    $sql = $cn->prepare("DELETE FROM tasks WHERE id=?");
    $sql->execute([$id]);
}

if ($_SERVER['REQUEST_METHOD'] == 'GET'&& isset($_GET['up']) && isset($_GET['upd'])) {
    $id = $_GET['upd'];
    $up = $_GET['up'];
    $sql = $cn->prepare("UPDATE tasks SET text = ? WHERE id = ?");
    $sql->execute([$up, $id]);
    
}


    $s=$cn->query("SELECT * FROM tasks");
    $n=$s-> fetchAll(PDO::FETCH_ASSOC);
    // echo"<pre>";
    // print_r ($n);
    $_SESSION['text'] = $n;
    header("Location: index.php");
     
?>
