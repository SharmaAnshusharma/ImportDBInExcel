
<!DOCTYPE html>
<html>
<head>
	<title>Import PHP Database into Excel</title>
		<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<body>
	<div class="container">
		<h1 class="text-center">Import PHP Database into Excel</h1>
		<?php
include('dbconnection.php');
$output = "";

	$query = mysqli_query($con,"SELECT * FROM `showmoretbl`");
	if(mysqli_num_rows($query) > 0 )
	{
		$output .='
			<table class="table table-striped">
				<tr>
					<th>ID</th>
					<th>Data</td>
				</tr>
		';
		while($row = mysqli_fetch_array($query))
		{
			$output .='
				<tr>
					<td>'.$row['ID'].'</td>
					<td>'.$row['Data'].'</td>
				</tr>
			'; 
		}
		$output .='</table>'; 
		echo $output;

	}

?>
		<br><br>
			<form method="post" action="excel.php">
				<button name="excel_export"class="btn btn-outline-primary form-control">Import in Excel</button>
			</form>			
	</div>

</body>
</html>