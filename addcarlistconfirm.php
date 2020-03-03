<?php 
$model = $_POST['model'];
$year = $_POST['year'];
$manufacturer = $_POST['manufacturer'];
$type = $_POST['type'];

include'connect.php';


$sql= "INSERT INTO tblcarlist(Car_Manufacturer, Car_Model, Car_Year, Car_Type)
VALUES ('$manufacturer','$model', $year, '$type')";

$query= mysqli_query($connect,$sql) or die (mysqli_error($connect));
header("location: index.php?loadnav=carlist");

?>
