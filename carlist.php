<?php
$sql = "SELECT * FROM tblcarlist";
include 'connect.php';

    if(isset($_POST['search'])){
        $search= $_POST['search'];
        $category=$_POST['category'];
        
        $sql = "SELECT * FROM tblcarlist
        WHERE $category LIKE '%$search%'";
    } else {
        $sql = "SELECT * FROM tblcarlist";
    }

$query = mysqli_query($connect,$sql) or die (mysqli_error($connect));
?>

<html> 
    <head> <title> Car Listings </title> </head>
    <body> <br/><br/><br/><br/>
            <form class="search" method="POST" action="index.php?loadnav=searchcarlist">
            <b> Search by: </b>  
            <select name="category">
            <option value="Car_Manufacturer"> Manufacturer </option>
            <option value="Car_Model"> Model </option>
            <option value="Car_Year"> Year </option>
            <option value="Car_Type"> Type </option>
            </select> 
			<input type="text" name="search">
			<input type ="submit" name="submit" value="Go">
			</form>


            <table border=1> 
                <tr> 
                    <td> Manufacturer </td> 
                    <td> Model </td> 
                    <td> Year</td> 
                    <td> Type </td> 
                </tr> 
            <?php
            while($r=mysqli_fetch_assoc($query))
            {
            ?>
                <tr> 
                <td> <?php echo $r['Car_Manufacturer'];?></td> 
                <td> <?php echo $r['Car_Model'];?></td> 
                <td> <?php echo $r['Car_Year'];?></td> 
                <td> <?php echo $r['Car_Type'];?></td> 
                </tr>
            <?php } ?>
            <tr>
				<td colspan="6"> <a href="index.php?loadnav=addcarlist"> ADD TO LIST (+) </a></td>
			</tr>
            </table> 
    </body> 

</html> 