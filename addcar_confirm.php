<?php 
$carname = $_POST['carname'];
$transmission = $_POST['transmission'];
$color = $_POST['color'];
$plate = $_POST['plate'];
$availability = "YES";
include'connect.php';


$sql= "INSERT INTO tblcars(Car, Transmission, Car_Color, Car_Plate_Number, Car_Availability)
VALUES ('$carname', '$transmission', '$color', '$plate', '$availability')";

$query= mysqli_query($connect,$sql) or die (mysqli_error($connect));
header("location: index.php?loadnav=cars");

?>
