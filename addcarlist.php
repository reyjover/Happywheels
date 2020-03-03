<?php
  // Sets the top option to be the current year. (IE. the option that is chosen by default).
  $currently_selected = date('Y'); 
  // Year to start available options at
  $earliest_year = 1950; 
  // Set your latest year you want in the range, in this case we use PHP to just set it to the current year.
  $latest_year = date('Y'); 

  print '<select>';
  // Loops over each int[year] from current year, back to the $earliest_year [1950]
  foreach ( range( $latest_year, $earliest_year ) as $i ) {
    // Prints the option with the next year in range.
    print '<option value="'.$i.'"'.($i === $currently_selected ? ' selected="selected"' : '').'>'.$i.'</option>';
  }
  print '</select>';
?>

<!DOCTYPE html>
<html>
<head>
	<title> Add to list (+) </title>
</head>
<body>
<br/>
<br/>
<br/>
<br/>
	<form method="POST" action="addcarlistconfirm.php"> 
		<h1> ADD TO LIST </h1> <br>
		Car Manufacturer: <select name="manufacturer"> 
                            <option> </option>   
                            <option value="Toyota"> Toyota </option> 
                            <option value="Mitsubishi"> Mitsubishi </option> 
                            <option value="Nissan"> Nissan </option> 
                            <option value="Hyundai"> Hyundai </option> 
                            <option value="Suzuki"> Suzuki </option> 
                            <option value="Ford"> Ford</option> 
                            <option value="Honda"> Honda </option> 
                          </select>
        <br/>    <br/>
        Model: <input type="text" name="model" /required>   <br/>   <br/>
        
        Year of Manufacturing: 
        <?php
        print '<select name="year">';
 
  foreach ( range( $latest_year, $earliest_year ) as $i ) {
    // Prints the option with the next year in range.
    print '<option value="'.$i.'"'.($i === $currently_selected ? ' selected="selected"' : '').'>'.$i.'</option>';
  }
  print '</select>';


        ?> 
        <br/> <br/>
        Car Type: 
        <select name="type"> 
                            <option> </option>   
                            <option value="Sedan"> Sedan </option> 
                            <option value="Hatchback"> Hatchback </option> 
                            <option value="Van"> Van </option> 
                            <option value="SUV"> SUV (Sports Utility Vehicle) </option> 
                            <option value="MUV"> MUV (Multi-purpose Utility Vehicle)</option> 
                            <option value="AUV"> AUV (Asian Utility Vehicle) </option> 
                          </select>
                <br/> <br/>
        <br/><br/>
			<input type="submit" name="submit" name="Submit">
	</form>


</body>
</html>