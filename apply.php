<?php
	session_start();
	if(!isset($_SESSION["username"]) && !isset($_SESSION["username"]))
	{
		$_SESSION["resturi"]=$_SERVER["REQUEST_URI"];
		die(header('Location: login.php'));
	}
	else
	{
		$_SESSION["resturi"]="";
	}
	require("database.php"); 
	$error="";
	if(isset($_POST["login"]))
	{
		$client_name=$_SESSION["username"];
		$work=$_POST["work"];
		$group_name=$_POST["group_name"];
		$description=$_POST["description"];
		if(!empty($client_name) && !empty($group_name) && !empty($work) && !empty($description))
		{
			$sql="INSERT into work(`client_name`,`work`,`group_name`,`description`)VALUES('$client_name','$work','$group_name','$description') ";
			if($conn->query($sql))
			{
				$error="<h2 style='color:brown'>Job has been sent to HR.</h2>";
			}
			else
			{
				$error="<br><p class='bold text-danger'>Upload Failure</p>";
			}
		}
		else
		{
			$error="<br><p class='bold text-danger'>Please fill empty fields</p>";
		}		
	}
	function test_data($data)
	{
		$data=trim($data);
		$data=stripslashes($data);
		$data=htmlspecialchars($data);
		return $data;
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Apply</title>
	<link rel="stylesheet" href="style.css">
</head>

<body class="bg" style="min-height:600px">
<ul>
<li><h1 style='color:white;padding-left:10px'>E<span style='color:brown'>cc</span>entric Network</h1></li>
<?php
if(isset($_SESSION["username"]) && !empty($_SESSION["username"]))
{
	echo '<li style="float:right"><h1 style="color:white;padding-right:10px">Logined as : <span style="color:brown">'.$_SESSION["username"].'</span></h5></li>';
}
?>
</ul>
<ul>
  <li><a href="index.php">Home</a></li>
  <li><a href="about.php" >About</a></li>
  <li><a href="notify.php" >Notifications</a></li>
  <?php 
	if(isset($_SESSION["username"]) && !empty($_SESSION["username"]))
	{	
		if($_SESSION["role"]=="admin")
		{
			echo '<li><a href="post.php" >Post</a></li>';
		}
		else if($_SESSION["role"]=="leader")
		{
			echo '<li><a href="project.php" >Project</a></li>';
		}
		else if($_SESSION["role"]=="developer")
		{
			echo '<li><a href="view.php" >Work Assign</a></li>';
		}
		else if($_SESSION["role"]=="client")
		{
			echo '<li><a href="apply.php" >Apply</a></li>';
		}
		echo '<li style="float: right;"><a href="logout.php" class="button" style="background-color:white;color:black" >Logout</a></li>';
	}
	else
	{
		echo '<li><a href="register.php">Register</a></li>';
		echo '<li style="float: right;"><a href="login.php" class="button" style="background-color:white;color:black" >Login</a></li>';
	}
	?>
</ul>
<div style='margin-top:2%'>
<?=$error;?>
<form name="addform" action="<?php echo $_SERVER["REQUEST_URI"]?>" method="post" enctype="multipart/form-data" novalidate>
	<h2 style="text-align:center; color:red">Register your product here !</h2>
	<label for="work" ><h5>Job Title</h5></label>
	<input type="text" name="work" id="work" placeholder="Job Title" required>
	<label for="group_name" ><h5>Select Category</h5></label>
	<select name="group_name" required>
		<option value="software">Software</option>
		<option value="website">Website</option>
		<option value="game">Game</option>
	</select>
	<label for="description" ><h5>About Project ( Short Description )</h5></label>
	<textarea name="description" placeholder="Enter Description"></textarea>
	<input type="submit" name="login" value="Submit">
	
</form>
</div>
	</body>
</html>
</html>