<?php
$students = array();
$file = fopen("students.txt", "r");
while (!feof($file)) {
  $line = fgets($file);
  if (!empty(trim($line))) {
    $fields = explode(",", $line);
    $student = array(
      "id" => $fields[0],
      "name" => $fields[1],
      "age" => $fields[2]
    );
    array_push($students, $student);
  }
}
fclose($file);
?>
<a href="add_student_form.php">Add Student</a>