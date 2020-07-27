<?php
class Task {
   public string $title;
   public string $desc;
   public bool $completed = false;
   public function __construct(string $title, string $desc) {
      $this->title = $title;
      $this->desc = $desc;
   }
}
?>
