<?php

/* Final requirement: At least one listing page that is searchable

*/

include('config.php');

include('classes/functions.php');

$term = get('search-term');

$forms = searchForms($term, $database);

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">

  	<title>List of Taekwondo Forms</title>
	<link rel="stylesheet" href="css/styleSheet.css">

</head>
<body>
	<div style="text-align: center" class="page">
		<h1>Taekwondo Forms</h1>
		<?php foreach($forms as $form) : ?>
			<p>
				<b>Name: <?php echo $form['koreanName']; ?></b><br />
				Number of movements: <?php echo $form['movements']; ?> <br />
				<a href="descriptionPage.php?koreanName=<?php echo $form['koreanName'] ?>">View full description</a>
			</p>
		<?php endforeach; ?>
		
		<p>Search by Korean name...</p>
			<form method="GET">
			<input type="text" name="search-term" placeholder="Search..." />
			<input type="submit" />
		</form>
		
		<p>
			<a href="home.php">Return to homepage</a>
		</p>
	</div>
</body>
</html>