<?php
include('dbconnection.php');
$output = "";
if(isset($_POST['excel_export']))
{
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
		header('Content-Type: application/xlx');
		header('Content-Disposition: attachment; filename=download.xls');

	}
}

?>