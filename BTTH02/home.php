<?php
// Tạo kết nối đến CSDL
$conn = mysqli_connect('localhost','root','','bt2');

// Kiểm tra kết nối
if(!$conn){
    die('Can not connect');
}
// Truy vấn danh sách lớp học mà giảng viên đang dạy
$sql = "SELECT * FROM khoahoc ";
$result = mysqli_query($conn,$sql);

// Hiển thị danh sách lớp học
if (mysqli_num_rows($result) > 0) {
    $lop = mysqli_fetch_all($result);
} else {
    echo "Không có lớp học nào.";
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Mã khóa học</th>
      <th scope="col">Tên Lớp</th>
      <th scope="col">Mô tả</th>
    </tr>
  </thead>
  <tbody>
    <?php
        foreach($lop as $lop){
    ?>
            <tr>
                <th scope="row"><?= $lop[0]; ?></th>
                <td><?= $lop[1]; ?></td>
                <td><?= $lop[2]; ?></td>
                <td><?= $lop[3]; ?></td>
            </tr>
    <?php
        }
    ?>
  </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>