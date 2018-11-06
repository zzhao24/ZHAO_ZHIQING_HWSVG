<?php
	$user = "root";
	$password = "root";
	$host = "localhost";
	$db = "db_poster";

	$conn = mysqli_connect($host, $user, $password, $db);
	mysqli_set_charset($conn, 'utf8');

	if (!$conn) {
		echo "Unable to connect to database, please contact our technician.";
		exit;
	}

	if (isset($_GET["boxid"])) {// check for a parameter ?carModel=R58
		$boxid = $_GET["boxid"];

		$myQuery = "SELECT * FROM information WHERE boxid = '$boxid'";

		$result = mysqli_query($conn, $myQuery);
		$rows = array();

		while($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}
	}

	echo json_encode($rows);
