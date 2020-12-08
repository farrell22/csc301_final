SELECT *
FROM ranks
JOIN forms
ON ranks.rankID = forms.rankID
WHERE beltColor LIKE :term