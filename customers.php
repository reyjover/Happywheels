<?php
$sql = "SELECT * FROM tblcustomer";
include 'connect.php';

    if(isset($_POST['search'])){
        $category = $_POST['category'];
        $search= $_POST['search'];

        $sql = "SELECT * FROM tblcustomer
        WHERE $category LIKE '%$search%'";
    } else {
        $sql = "SELECT * FROM tblcustomer";
    }

$query = mysqli_query($connect,$sql) or die (mysqli_error($connect));
?>

<html> 
    <head> <title> Customer Profiles </title> </head>
    <body> <br/><br/><br/><br/>
            <form class="search" method="POST" action="index.php?loadnav=customers">
            <b> Search by: </b>  
            <select name="category">
            <option value="CustomerID"> ID </option>
            <option value="Customer_Firstname"> Firstname </option>
            <option value="Customer_Lastname"> Lastname </option>
            <option value="Valid_ID"> Valid ID </option>
            <option value="Contact_Number"> Contact Number</option>
            <option value="Email"> Email </option>
            </select> 
			 <input type="text" name="search">
			<input type ="submit" name="submit" value="Go">
			</form>


            <table border=1> 
                <tr> 
                    <td> CustomerID  </td> 
                    <td> Firstname </td> 
                    <td> Lastname </td> 
                    <td> Valid ID  </td> 
                    <td> ID Number </td> 
                    <td> Contact Number </td> 
                    <td> Email </td> 
                    <td colspan="2"> Manage </td>
                </tr> 
            <?php
            while($r=mysqli_fetch_assoc($query))
            {
            ?>
                <tr> 
                <td> <?php echo $r['CustomerID'];?></td> 
                <td> <?php echo $r['Customer_Firstname'];?></td> 
                <td> <?php echo $r['Customer_Lastname'];?></td> 
                <td> <?php echo $r['Valid_ID'];?></td> 
                <td> <?php echo $r['ID_Number'];?></td> 
                <td> <?php echo $r['Contact_Number'];?></td> 
                <td> <?php echo $r['Email'];?></td> 
                <td> <a href="editcustomer.php?CustomerID=<?php echo $r['CustomerID'];?>"> EDIT </a> </td>
			    <td> <a href="deletecustomer.php?CustomerID=<?php echo $r['CustomerID'];?>&&Firstname=<?php echo $r['Customer_Firstname'];?>"> DELETE </a> </td>
	
                </tr>
            <?php } ?>
            <tr>
				<td colspan="9"> <a href="addcustomer.php"> Customer (+) </a></td>
			</tr>
            </table> 
    </body> 

</html> 