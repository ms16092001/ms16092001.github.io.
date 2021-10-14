<?php
$txt = "";
if($_SERVER['REQUEST_METHOD']=="GET")
{
	if(isset($_GET['search']))
	{
		$txt1 = $_GET['search'];
		$txt = validate($_GET['search']);
	}

	$txt = strtolower($txt);

	if (strcmp($txt, "anemiacausedbybloodloss") == 0)
	{
		$id = 1;
	}
	else if(strcmp($txt, "anemiabydecreasedorfaultyredbloodcellproduction") == 0)
	{
		$id = 2;
	}
	else if(strcmp($txt, "anemiacausedbydestructionofredbloodcells") == 0)
	{
		$id = 3;
	}
	
	else
	{
		$res = "No Search Results Found for ".$txt1;
		$id=-1;
	}
}

function validate($x)
{
	$x = trim($x);
	$x = str_replace(' ', '', $x);
	$x = stripslashes($x);
	$x = htmlspecialchars($x);
	return $x;
}

$name=$desc=$symp=$cure="";

if($id>0 and $id<=20)
{
$conn = mysqli_connect('localhost','root','S-123','medicinfo-master');
if(!$conn)
{
	die("Connection Error ".mysqli_error($conn));
}

$sql = "SELECT * FROM disease where Did=$id";

$result = mysqli_query($conn, $sql);

if(!$result)
{
	die("Connection error ".mysqli_error($conn));
}

while($row = mysqli_fetch_assoc($result))
{
	$name = $row['Dname'];
	$desc = $row['Ddesc'];
	$symp = $row['Dsymp'];
	$cure = $row['Dcure'];
}

}

else
{
	$name=$desc=$symp=$cure=$res;
}
?>


<!DOCTYPE html>
<html>
<head>
	<title>Anemia Cure And Nutritional Generation Among Female And Child| Home</title>
	<link rel="stylesheet" type="text/css" href="homepage.css"/>
	<link rel="stylesheet" type="text/css" href="Header.css"/>
	<meta charset="utf-8"/>
	<base href="index.html"/>
</head>
<body>
	<div class="border"></div>
	<div id="hints"></div>
	<div class="medictab">
		
			<h3>Anemia Cure Among Female And Child <p style="text-decoration:none;">Saving Lives | Protecting People | Sharing Knowledge</p></h3>
			
			<form action="SearchResults.php" method="GET" autocomplete="off">
				<input type="text" name="search" placeholder="Search Anemia Type..." size="30" onkeyup="showHints(this.value)"/>
				<input type="submit" value="Search" />
			</form>
	</div>

	
	<div class="navigation" id="navigation">
		<ul>
			<li><a href="" class="active">Home</a></li>
			<li class="dropdown">
				<a href="list of hospital.html" class="dropbtn">List of Hospitals</a>
				<div class="dropctn">
					<!--<a href="diseasequiz.html">Hospitals in India</a>
					<a href="medicinequiz.html">Hospitals Abroad</a>-->
				</div>
			</li>
			
			
			

			<li class="dropdown">
				<a href="medicine.html" class="">Medicines</a>
			<div class="dropctn">
					<a href="vitaminb12.html">Vitamin B12</a>
					<a href="Procrit.html">Procrit</a>
					<a href="Feosol.html">Feosol</a>
					<a href="Folate">Folate</a>
					<a href="Slow Fe">Slow Fe</a>
					<a href="medicine.html">More...</a>		
				</div>
			</li>
			
			
			<li><a href="sympcheck.html">Symptoms</a></li>
			<li><a href="about.html">About Us</a></li>

		</ul>
	</div>
<br/><br/><br/>
	<div style="position: relative; top: 55px; z-index: -1; min-width: 30%; width: 100%;">
	<p style="word-spacing: 4px;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 22px;">About</span> <span style="letter-spacing: 2px; font-family: 'Droid Sans', Sans-Serif; font-size: 25px; text-decoration: underline;"><?php echo strtoupper($name);?></span></p>
	</div>
	<div style="position: relative; top: 30px; overflow: auto; z-index:-1;">
		<p align="justify" style="font-family: Tahoma, Geneva, sans-serif; font-size: 18px; border: 3px solid midnightblue; padding-top: 8px; padding-left: 10px; padding-right: 10px; border-radius: 4px; background-color: #E6F5FF; letter-spacing: 0.5px;">
			
			<span id="heading">
				Description
			</span><br/>
			<?php echo $desc;?>
			
			<br/><br/>
			<span id="heading">
				Symptoms
			</span>
			<br/>
				
				<?php echo $symp; ?>

			<br/><br/>
			<span id="heading">
				Cure
			</span>
			<br/>
				
				<?php echo $cure; ?>

			<br/><br/>
		</p>
	</div>
	<br/><br/>

	<div id="footer">
		<p style="text-align: center; font-size: 11px;">Thank you for visiting</p>
		<p style="text-align: center;">Anemia Cure Among Female And Child</p>
		<p style="font-size: 11px; text-align: center;"><abbr title="">Contact Us</abbr> | Visit Again | Stay Healthy |<a href="feedback.php" style="font-size: 11px;">FeedBack</a></p>
		<hr/>
			<p style="color: #DCFFFE; margin-left: 10px; font-size: 19px;">Maintained By: -
			<ul id="credits">
				<li>Meet</li>
				<li>Sarvesh</li>
				<li>Ashish</li>
			</ul>
				<span id="footright1">Submitted To:-</span>
				<span id="footright2">Rutvi thakur madam</span>
			</p>
	</div>



	<!-- JAVASCRIPT FOR SEARCH SUGGESTIONS -->

	<script type="text/javascript">
		
		function showHints(str)
		{
			if(str.length == 0 || str == "")
			{
				document.getElementById("hints").innerHTML="";
				document.getElementById("hints").style.border="none";
				document.getElementById("navigation").style.marginTop = "14px";
				return;
			}
			else
			{
				var xmlhttp = new XMLHttpRequest();

				xmlhttp.onreadystatechange = function()
				{
					if(this.readyState == 4 && this.status == 200)
					{
						document.getElementById("hints").innerHTML = this.responseText;
						document.getElementById("hints").style.border = "1px solid blue";
						document.getElementById("navigation").style.marginTop = "36px";
					}
				};

				xmlhttp.open("GET", "SearchHints.php?q="+str, true);
				xmlhttp.send();
			}
		}

	</script>
</body>
</html>