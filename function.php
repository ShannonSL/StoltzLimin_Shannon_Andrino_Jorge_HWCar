
<?php
require 'connect.php';
function get_auto($pdo)
{
  $query = "SELECT * FROM `tbl_auto`";
  $get_auto = $pdo->query($query);
  $results = array();
  while ($row = $get_auto->fetch(PDO::FETCH_ASSOC)) {
    $results[] = $row;
  }
  return $results;
}
?>