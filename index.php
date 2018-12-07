<?php
require 'functions.php';
  // instantiate database and product object
  $database = new Database();
  $conn = $database->getConnection();
  $data = get_auto($conn);
  echo json_encode($data);
?>