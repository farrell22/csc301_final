<?php

function searchRanks($term, $database) {
	$term = '%' . $term . '%';
	$sql = file_get_contents('sql/getRanks.sql');
	$params = array(
		'term' => $term
	);
	$statement = $database->prepare($sql);
	$statement->execute($params);
	$ranks = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $ranks;
}
function getPageText($koreanName, $database) {
$sql = file_get_contents('sql/getText.sql');
$params = array(
	'koreanName' => $koreanName
);
$statement = $database->prepare($sql);
$statement->execute($params);
$koreanTerms = $statement->fetchAll(PDO::FETCH_ASSOC);
return $koreanTerms;
}

function searchForms($term, $database) {
	$term = '%' . $term . '%';
	$sql = file_get_contents('sql/getForms.sql');
	$params = array(
		'term' => $term
	);
	$statement = $database->prepare($sql);
	$statement->execute($params);
	$forms = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $forms;
}

function get($key) {
	if(isset($_GET[$key]))
		return $_GET[$key];
	else
		return '';
}