
<?php


require "db.con.php";


?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <h1 align ="center">List</h1>
  <table style="text-align: center;">
    <thead>
      <tr>
        <th width="20%">Id</th>
        <th width="20%">Name</th>
        <th width="20%">Phone</th>
        <th width="20%">Image</th>
        <th width="20%">Email</th>
      </tr>
    </thead>
    <tbody>
      <?php
        $query = mysqli_query($db_con, 'SELECT * FROM `tbl_image` ORDER BY `tbl_image`.`id` DESC;');
        $i = 1;
        while($result = mysqli_fetch_array($query)){?>
      
        <tr>
          <?php
          
          echo '
          <td>'.$i.'</td>
          <td>'.ucwords($result['name']).'</td>
          <td>'.ucwords($result['phones']).'</td>
          <td><img src="image/'.$result['photo'].'" height="50px"></td>
          <td>'.ucwords($result['email']).'</td>'
             
          ?>
        </tr>
        
    <?php $i++; }?>
    </tbody>
  </table>
</body>
</html>