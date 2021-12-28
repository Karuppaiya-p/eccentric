<?php
	session_start();
	if(isset($_SESSION["username"]) && !empty($_SESSION["username"]))
	{
		header("Location: index.php");
	}
	require("database.php"); 
	$error="";
	if(isset($_POST["login"]))
	{
		$username=test_data($_POST["username"]);
		$password=$_POST["password"];
		$group_name=$_POST["group_name"];
		$role=$_POST["role"];
		if(!empty($username) && !empty($password) && !empty($group_name) && !empty($role))
		{
			$sql="INSERT into user(`username`,`password`,`group_name`,`role`)VALUES('$username','$password','$group_name','$role') ";
			if($conn->query($sql))
			{
				$last_id=$conn->insert_id;
				$id=$last_id;
				$_SESSION["user_id"]=$id;
				$_SESSION["username"]=$username;
				$_SESSION["group_name"]=$group_name;
				$_SESSION["role"]=$role;
				echo "<script>location.replace('index.php');</script>";
			}
			else
			{
				$error="<br><p class='bold text-danger'>Already Existing username!</p>";
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
	<title>Register</title>
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
	<label for="username"><h5>Username</h5></label>
	<input type="text" name="username" id="username" placeholder="Enter your username" required>
	<label for="password" ><h5>Password</h5></label>
	<input type="password" name="password" id="password" placeholder="Enter your password" required>
	<label for="group_name" ><h5>Select Group Name</h5></label>
	<select name="group_name" required>
		<option value="software">Software</option>
		<option value="website">Website</option>
		<option value="game">Game</option>
		<option value="client">Client</option>
	</select>
	<label for="role" ><h5>Select Role</h5></label>
	<select name="role" required>
		<option value="developer">Developer</option>
		<option value="client">Client</option>
	</select>
	<input type="submit" name="login" value="Submit">
	
</form>
</div>
	</body>
</html>
</html>