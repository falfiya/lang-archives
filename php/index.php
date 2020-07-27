<?php
require 'index.logic.php'
?>

<!DOCTYPE html>
<head>
   <meta charset="UTF-8">
   <title>Today's Tasks</title>
   <style>
      body {
         background-color: beige;
      }
      ul.unfinished {
         background-color: #a94;
      }
      ul.finished {
         background-color: #794;
      }
   </style>
</head>
<body>
   <ul>
      <?php foreach($todos as $todo): ?>
         <ul>
            <li>id: <?= $todo['id'] ?></li>
            <li>title: <?= $todo['title'] ?></li>
            <li>description: <?= $todo['description'] ?></li>
         </ul>
      <?php endforeach; ?>
   </ul>
</body>
