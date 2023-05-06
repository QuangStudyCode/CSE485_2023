<?php
$id = $_POST["id"];
$name = $_POST["name"];
$age = $_POST["age"];

$file = fopen("students.txt", "a+");
while (!feof($file)) {
  $line = fgets($file);
  if (strpos($line, $id . ",") !== false) {
    echo "Student ID already exists. Please use a different ID.";
    exit;
  }
}

$student = $id . "," . $name . "," . $age . "\n";
fwrite($file, $student);
fclose($file);

echo "Student added successfully.";
?>