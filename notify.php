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
	if(isset($_POST["work_id_".$_SESSION["group_name"]]))
	{
		$username=test_data($_SESSION["username"]);
		$work_id=$_POST["work_id_".$_SESSION["group_name"]];
		if(!empty($username) && !empty($work_id))
		{
			$sql="UPDATE work SET `".$_SESSION["role"]."_by`='".$username."',`".$_SESSION["role"]."_approved`=1 where id='".$work_id."'";
			if($conn->query($sql))
			{
				echo "<script>location.replace('notify.php');</script>";
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
			$query_approve="Select * from work where admin_approved=0";
			echo '<li><a href="post.php" >Post</a></li>';
		}
		else if($_SESSION["role"]=="leader")
		{
			$query_approve="Select * from work where leader_approved=0 and group_name='".$_SESSION["group_name"]."'";
			echo '<li><a href="project.php" >Project</a></li>';
		}
		else if($_SESSION["role"]=="developer")
		{
			$query_approve="Select * from work where group_name='".$_SESSION["group_name"]."' and leader_approved=1";
			echo '<li><a href="view.php" >Work Assign</a></li>';
		}
		else if($_SESSION["role"]=="client")
		{
			$query_approve="Select * from work where admin_approved=1 and client_name='".$_SESSION["username"]."'";
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
	  <tr>
		<th>S.No</th>
		<th>Client</th>
		<th>Job Title</th>
		<th>Group</th>
		<th>Description</th>
		<th>Date</th>
		<th>Approve</th>
	  </tr>
	<?php
	$work=$conn->query($query_approve);
	if($work->num_rows>0)
	{
		$i=1;
		while($row=$work->fetch_assoc())
		{
			if($_SESSION["role"]=="client" || $_SESSION["role"]=="developer")
			{
				$button="Approved";
				$ap_query="INSERT INTO view_by(`f_work`,`username`,`group_name`)VALUES('".$row["id"]."','".$_SESSION["username"]."','".$_SESSION["group_name"]."')";
				$conn->query($ap_query);
			}
			else
			{
				$button='<button type="submit" name="work_id_'.$_SESSION["group_name"].'" value="'.$row["id"].'">Approve</button>';
			}
			
			echo '<tr>
					<td>'.$i.'.</td>
					<td>'.$row["client_name"].'</td>
					<td>'.$row["work"].'</td>
					<td>'.$row["group_name"].'</td>
					<td>'.$row["description"].'</td>
					<td>'.$row["date"].'</td>
					<td>'.$button.'</td>
				</tr>';
				$i++;
		}
	}
	else
	{
		echo '<tr style="text-align:center"><td colspan=7>No records</td></tr>';
	}
		
	?>
	</table>
</form>
</div>
	</body>
</html>
</html>