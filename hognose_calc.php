	<!-- Adds the main title at the top of the page-->
	<!DOCTYPE html>
<html>
	<head>
		<style>
			table, th, td {
				border: 1px solid black;
			}
		</style>
	</head>
<body>
	<h1 style="text-align:center">Hognose Morph Calculator</h1>
</body>
</html>

<?php
	/*Connection variables at top
	* Makes it easy to change if needed*/
$server="localhost";
$username="kortneyjohnson";
$password="";
$database="kortneyjohnson";

    /*Connect to my database*/
$connect = mysqli_connect($server,$username,"",$database);

    /*throw errors if its unable to connect.*/
if($connect->connect_error){
    echo "Something has gone terribly wrong";
    echo "Connection error:" .$connect->connect_error;
}else{
    echo "<p></p>";
    }
    

	/*Makes the translation table*/
	/*Function that creates a visual table from an array*/
function array_to_table($rows) 
    {   
        echo "<table>";
        //Table Headers, I wanted to variable do them but had to hardcode...
        echo "<th>".'Genotypic Name',"</th>";
        echo "<th>".'Visual Morph',"</th>";
    
        // Table body
        $body = array_slice($rows, 1, null, true);
        foreach ($body as $row) {
          echo "<tr>";
            foreach ($row as $cell) {
              echo "<td>".$cell."</td>";
            } 
          echo "</tr>";
        }     
      echo "</table>";
	  printf('<br>');
	  printf('<br>');
    }
    

    /* Run a basic SQL query and makes it an array*/
$result = mysqli_query($connect, "SELECT genotypicName, visualMorph FROM parent2");
$rows= mysqli_fetch_all($result, MYSQLI_ASSOC);

    /*Prints the table for viewing*/
	print(array_to_table($rows));

/*trying to drop down menu*/
$sqlSelect="SELECT genotypicName FROM parent1";
$result = $connect -> query ($sqlSelect);
echo '<strong>Parent 1 Choices Are:		</strong>';
echo "<select id='genotypicName'>";
while ($row = mysqli_fetch_array($result)) {
	echo "<option value='" . $row['genotypicName'] . "'>" . $row['genotypicName'] . "</option>";
}
echo "</select>";

$sqlSelect="SELECT genotypicName FROM parent2";
$result = $connect -> query ($sqlSelect);
printf('<br>');
printf('<br>');
echo '<strong>Parent 2 Choices Are:		</strong>';
echo "<select id='genotypicName'>";
while ($row = mysqli_fetch_array($result)) {
	echo "<option value='" . $row['genotypicName'] . "'>" . $row['genotypicName'] . "</option>";
}
echo "</select>";





/*Always close your connection. 
 * Its a courtesy to your fellow users.
 */
mysqli_close($connect);

?>


<!--This section of code formats the individual snake images-->
<!DOCTYPE html>
<html>
<body>
<h2 style="text-align:center">Gallery of Hognose Morphs</h2>
<p style="text-align:center">This section displays an image of each possible visual morph this calculator can identify.
	The name is listed along with the possible genotypes that can produce it from the calculator output.</p>

	<div class="row">
<!--this is for the normal image-->
		<div class="column">
			<!--This line makes the image a figure so the caption works-->
			<figure>
				<img src="hgimages/normal.jpg" alt="Image of a normal hognose snake, a small snake with a shovel shaped nose, brown coloration, and a spotted pattern" style="width:432px;height:289px";>
				<!--This line adds the caption below the image-->
				<figcaption>Normal Hognose Snake (genotypes: AA cc SS Ww XX, Aa cc SS ww XX, AA cc SS ww Xx, AA cc Ss ww XX)</figcaption>
			</figure>
		</div>

<!--this is for the albino image-->
		<div class="column">
			<figure>
				<img src="hgimages/albino.jpg" alt="Image of an albino hognose snake, a small snake with a shovel shaped nose,  orange coloration, and a spotted pattern" style="width:432px;height:289px";>
				<figcaption>Albino Morph (genotypes: aa cc SS ww XX, aa cc SS ww Xx, aa cc Ss ww XX)</figcaption>
			</figure>
		</div>

<!-- This is the albino conda image-->
		<div class="column">
			<figure>
				<img src="hgimages/albino_conda.jpg" alt="Image of an albino conda hognose snake, a small snake with a shovel shaped nose, orange coloration, and reduced pattern" style="width:432px;height:289px";>
				<figcaption>Albino Conda Morph (genotype: aa Cc SS ww XX)</figcaption>
			</figure>
		</div>
	</div>

	<div class="row">
<!--this defines the albino_superconda-->
		<div class="column">
			<figure>
				<img src="hgimages/albino_superconda.jpg" alt="Image of an albino superconda hognose snake, a small snake with a shovel shaped nose, orange coloration, and no spot pattern" style="width:432px;height:289px";>				
				<figcaption>Albino Superconda Morph (genotype: aa CC SS ww XX)</figcaption>
			</figure>
		</div>

<!--this is for the axanthic image-->
		<div class="column">
			<figure>
				<img src="hgimages/axanthic.jpg" alt="Image of an axanthic hognose snake, a small snake with a shovel shaped nose, grey coloration, and a spotted pattern"  style="width:432px;height:289px";>
				<figcaption>Axanthic Morph (genotypes: AA cc SS ww xx, Aa cc SS ww xx, AA cc Ss ww xx)</figcaption>
			</figure>
		</div>

<!--this is for the axanthic conda image-->
		<div class="column">
			<figure>
				<img src="hgimages/axanthic_conda.jpg" alt="Image of an axanthic conda hognose snake, a small snake with a shovel shaped nose, grey coloration, and a reduced pattern" style="width:432px;height:289px";>
				<figcaption>Axanthic Conda Morph (genotype: AA Cc SS ww xx)</figcaption>
			</figure>
		</div>
	</div>

	<div class="row">
<!--this is for the axanthic superconda image-->
		<div class="column">
			<figure>
				<img src="hgimages/axanthic_superconda.jpg" alt="Image of an axanthic superconda hognose snake, a small snake with a shovel shaped nose, grey coloration, and no pattern" style="width:432px;height:289px";>
				<figcaption>Axanthic Superconda Morph (genotype: AA CC SS ww xx)</figcaption>
			</figure>
		</div>

<!--this is for the conda image-->
		<div class="column">
			<figure>
				<img src="hgimages/conda.jpg" alt="Image of a conda hognose snake, a small snake with a shovel shaped nose, brown coloration, and a reduced pattern" style="width:432px;height:289px";>
				<figcaption>Conda Morph (genotype: AA Cc SS ww XX)</figcaption>
			</figure>
		</div>

<!--this is for the sable image-->
		<div class="column">
			<figure>
				<img src="hgimages/sable.jpg" alt="Image of a sable hognose snake, a small snake with a shovel shaped nose, black coloration, and a spotted pattern" style="width:432px;height:289px";>
				<figcaption>Sable Morph (genotype: AA cc ss ww XX, Aa cc ss ww XX, AA cc ss ww Xx)</figcaption>
			</figure>
		</div>
	</div>

<!--this is for the sable conda image-->
	<div class="row">
		<div class="column">
			<figure>
				<img src="hgimages/sable_conda.jpg" alt="Image of a sable conda hognose snake, a small snake with a shovel shaped nose, tan coloration, and a reduced pattern" style="width:432px;height:289px";>
				<figcaption>Sable Conda Morph (genotype: AA Cc ss ww Xx)</figcaption>
			</figure>
		</div>

<!--this is for the sable superconda image-->
		<div class="column">
			<figure>
				<img src="hgimages/sable_superconda.jpg" alt="Image of a sable superconda hognose snake, a small snake with a shovel shaped nose, tan coloration, and no pattern" style="width:432px;height:289px";>
				<figcaption>Sable Superconda Morph (genotype: AA CC ss ww XX)</figcaption>
			</figure>
		</div>

<!--this is for the snow image-->
		<div class="column">
			<figure>
				<img src="hgimages/snow.jpg" alt="Image of a snow hognose snake, a small snake with a shovel shaped nose, white-pink coloration, and a spotted pattern" style="width:432px;height:289px";>
				<figcaption>Snow Morph (genotype: aa cc SS ww xx)</figcaption>
			</figure>
		</div>
	</div>

<!--this is for the sunburst image-->
	<div class="row">
		<div class="column">
			<figure>
				<img src="hgimages/sunburst.jpg" alt="Image of a sunburst hognose snake, a small snake with a shovel shaped nose, pale-orange coloration, and a spotted pattern" style="width:432px;height:289px";>
				<figcaption>Sunburst Morph (genotype: aa cc ss ww XX)</figcaption>
			</figure>
		</div>

<!--this is for the superconda image-->
		<div class="column">
			<figure>
				<img src="hgimages/superconda.jpg" alt="Image of a superconda hognose snake, a small snake with a shovel shaped nose, brown coloration, and no pattern" style="width:432px;height:289px";>
				<figcaption>Superconda Morph (genotype: AA CC SS WW XX)</figcaption>
			</figure>
		</div>
	</div>

	<div class="clearfix"></div>
	<!--adds white space after the last picture-->
<p> 
	<br>
</p>
</body>

	<!--Links at the bottom of the page-->
<body>
	<!--adds in the "Request Morphs" form link-->
<a href="https://forms.gle/U7XG9ZSUfYYNmAqEA">Click here to request morph additions!<br></a>
	
	<!--adds in some whitespace between the two links to make it easier to click-->
<p> 
	<br>
</p>

	<!--adds in the "REport a bug" form link-->
<a href="https://forms.gle/wa7MNSb2Yc64heYG6">Click here to report a bug!</a>

	<!--adds in some whitespace after link to make it easier to click-->
<p> 
	<br>
</p>
</body>
</html>