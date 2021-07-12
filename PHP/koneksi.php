<?php 

function koneksi() 
{
	return mysqli_connect("localhost", "root", "", "loker_guru");
}

function query($query) 
{
	$koneksi = koneksi();

	$result= mysqli_query($koneksi, $query);

	$rows = [];
	while ($row = mysqli_fetch_assoc($result)) {
		$rows[] = $row 
	}
    	
	return $rows;
}

?>
