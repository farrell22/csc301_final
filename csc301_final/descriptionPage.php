<?php

include('config.php');

include('classes/functions.php');

$koreanName = get('koreanName');

$koreanTerms = getPageText($koreanName, $database);

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">

  	<title><?php $koreanName ?></title>
	<link rel="stylesheet" href="css/styleSheet.css">

</head>
<body>
	<div style="text-align: center" class="page">
		
		<h2><?php echo $koreanTerms['koreanName'];?></h2>
			<p>
				Translation: <?php echo $koreanTerms['englishTranslation'];?>
				Description: <?php echo $koreanTerms['description'];?>
				
			</p>
		<!-- Go back home -->
		<p>
			<a href="home.php">Return to homepage</a>
		</p>
	</div>
</body>
</html>