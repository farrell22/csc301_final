<?php

include('config.php');

include('classes/functions.php');

$term = get('search-term');

$ranks = searchRanks($term, $database);

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">

  	<title>List of Taekwondo Ranks</title>
	<link rel="stylesheet" href="css/styleSheet.css">

</head>
<body>
	<div style="text-align: center" class="page">
		<h1>Taekwondo Ranks</h1>
		<?php foreach($ranks as $rank) : ?>
			<p>
				<b><?php echo $rank['beltColor']; ?> Belt</b><br />
				Rank Principle: <?php echo $rank['rankPrinciple']; ?> <br />
				Number of New Techniques to Learn: <?php echo $rank['newTechniques']; ?> <br />
				Associated Form(s): <?php echo $rank['koreanName']; ?> <br>
			</p>
		<?php endforeach; ?>
		
		<p>Search by belt color...</p>
			<form method="GET">
			<input type="text" name="search-term" placeholder="Search..." />
			<input type="submit" />
		</form>
		
		<!-- Go back home -->
		<p>
			<a href="home.php">Return to homepage</a>
		</p>
	</div>
</body>
</html>