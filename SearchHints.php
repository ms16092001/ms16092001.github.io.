<?php

$q = $_GET["q"];
$searchContent = array("Anemia caused by blood loss","Anemia  by decreased or faulty red blood cell production","Anemia caused by destruction of red blood cells");

$len = strlen($q);
$q = strtolower($q);
$hint = "";
foreach ($searchContent as $value) 
{
	if(stristr($q, substr($value,0,$len)))
	{
		$hint .= $value."<br/>";
	}
}
if($hint == "")
{
	$hint = "No Suggestions!";
}
echo $hint;
?>