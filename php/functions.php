<?php
namespace functions;
function isOfLegalAge(int $age): int {
   return $age >= 21;
}

function dd($any) {
   print("<pre>");
   die(var_dump($any));
}
?>
