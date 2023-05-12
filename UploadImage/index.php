<?php
require 'connection.php';


if(isset($_POST["submit"])){
  $name = $_POST["name"];
  $phone = $_POST['phones'];
  $email = $_POST['email'];
  
  $photo = explode('.', $_FILES['photo']['name']);
  $photo = end($photo);
  $photo = date('Y-m-d-m-s'). '.'.$photo;
  move_uploaded_file($_FILES['photo']['tmp_name'], 'image/' .$photo);
  
  $query = "INSERT INTO tbl_image(`name`,`phones`,`photo`, `email`) VALUE ('$name','$phone', '$photo', '$email');";

  if(mysqli_query($conn, $query)){
    echo "
    
    <script>alert('successfull')</script>

    ";
  }else{
    echo "failed";
  }


}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Upload Image File</title>
  </head>
  <body>
   <section style="margin-left: 50px;">
   <form class="" action="" method="post" autocomplete="off" enctype="multipart/form-data">
      <label for="name">Name : </label>
      <input type="text" name="name" id = "name" required value=""> <br><br>
      <label for="Phone">Phone Number:</label>
      <input type="text" name="phones" id = "phone" required value=""> <br><br>
      <label for="Phone">Email:</label>
      <input type="email" name="email" id = "email" required value=""> <br><br>
      <label for="photo">Image : </label>
      <input type="file" name="photo" id="pic" value=""> <br><br>
      <button type = "submit" name = "submit">Submit</button>
    </form>
    <br>
    <a href="data.php">Data</a>
   </section>
  </body>
</html>
