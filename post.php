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
	if(isset($_POST["update"]))
	{
		$work_id=$_POST["update"];
		$leader_comments=$_POST["leader_comments".$work_id];
		if(!empty($work_id))
		{
			$sql="Update work SET `leader_comments`='".$leader_comments."' where id='".$work_id."'";
			if($conn->query($sql))
			{
				echo "<script>location.replace('project.php');</script>";
			}
			else
			{
				$error="<br><p class='bold text-danger'>Upload failure!</p>";
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
	<table id="file">
	<?php
	$work=$conn->query("Select * from work where admin_approved=1 and admin_by='".$_SESSION["username"]."'");
	if($work->num_rows>0)
	{
		$i=1;
		while($row=$work->fetch_assoc())
		{
			 $query2="SELECT GROUP_CONCAT(DISTINCT username ORDER BY username ASC SEPARATOR ',') as users FROM view_by where f_work=".$row["id"]." and group_name='client'" ;
			$view_by=$conn->query($query2)->fetch_assoc();
			echo '	<tr style="background-color:#999">
						<td>S.No</td>
						<td>'.$i.'</td>
					</tr>
					<tr>
						<td>Client Name</td>
						<td>'.$row["client_name"].'</td>
					</tr>
					<tr>
						<td>Job Title</td>
						<td>'.$row["work"].'</td>
					</tr>
					<tr>
						<td>Description</td>
						<td>'.$row["description"].'</td>
					</tr>
					<tr>
						<td>Date</td>
						<td>'.$row["date"].'</td>
					</tr>
					<tr>
						<td>Viewed Members</td>
						<td>'.$view_by["users"].'</td>
					</tr>
					<tr>
						<td>Leader Comments</td>
						<td>'.$row["leader_comments"].'</td>
					</tr>
				</tr>';
				$i++;
		}
	}
	else
	{
		echo '<tr style="text-align:center"><td colspan=6>No records</td></tr>';
	}
		
	?>
	</table>
</form>
</div>
	</body>
</html>
</html>