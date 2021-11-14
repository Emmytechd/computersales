

<?php include('includes/connection.php');?>  

<body>
<?php

	

			if (!isset($_GET['do']) || $_GET['do'] != 1) {
								
	
			switch ($_GET['type']) {
				case 'users':
					$query = 'DELETE FROM tblusers
							WHERE
							users_id = ' . $_GET['id'];
						$result = mysqli_query($db, $query) or die(mysqli_error($db));
						
?>
			<script type="text/javascript">
				alert("Users Successfully Deleted.");
				window.location = "admin.php";
			</script>				
				
			<?php
			//break;
				}
			}
			?>

</body>
</html>