<?php

require 'functions.php';

functions\isOfLegalAge(1);

// functions\dd(new Task("Finish Homework", "Obey the lords of education"));

try {
   $pdo = new PDO('mysql:host=localhost;dbname=mytodo;user=root');
} catch (Exception $e) {
   die("Could not establish a database connection" . $e);
}

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$pdo->exec("
   create table if not exists todos(
      id integer primary key auto_increment,
      title text,
      description text
   )
");

$db_getTodos = $pdo->prepare("select * from todos");

$db_getTodos->execute();

$todos = $db_getTodos->fetchAll();

// functions\dd($todos);

?>
