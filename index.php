<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
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
	 <h1 style="text-align:center;color:red">Eccentric Network</h1>
	 <p style="text-align:justify;color:blue">Proposed System:</p>
	 <p style="text-align:justify;">This eccentric network is developing a common interface for different sections of the development firm. This system provides help in managing different projects as well as the members associated with the work instant status of involvements of a person in the task. It provides all the available members to be part of the team and easy selection procedure to make them available when required. It also provides security to the confidential information. It reduces the redundancy of making the entries of the activities, which are done manually. It speeds up the processing with  firm. 
</p>
	 <p style="text-align:justify;color:blue">Requirement:</p>
	<ol>
		<li>Server</li>
		<li>Text Editor</li>
		<li>Intranet</li>
		<li>LAN</li>
	</ol>
</div>
	</body>
</html>