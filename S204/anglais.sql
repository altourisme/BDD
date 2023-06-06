SELECT DISTINCT *
FROM (sportifs NATURAL JOIN ((participations NATURAL JOIN dates) NATURAL JOIN evenements)) NATURAL JOIN appartient
WHERE age <= (SELECT MIN(age) FROM participations);

SELECT DISTINCT *
FROM (sportifs NATURAL JOIN ((participations NATURAL JOIN dates) NATURAL JOIN evenements)) NATURAL JOIN appartient
WHERE age >= (SELECT MAX(age) FROM participations);

SELECT DISTINCT *
FROM (sportifs NATURAL JOIN ((participations NATURAL JOIN dates) NATURAL JOIN evenements)) NATURAL JOIN appartient
WHERE poids <= (SELECT MIN(poids) FROM participations);

SELECT DISTINCT *
FROM (sportifs NATURAL JOIN ((participations NATURAL JOIN dates) NATURAL JOIN evenements)) NATURAL JOIN appartient
WHERE poids >= (SELECT MAX(poids) FROM participations);

SELECT DISTINCT *
FROM (sportifs NATURAL JOIN ((participations NATURAL JOIN dates) NATURAL JOIN evenements)) NATURAL JOIN appartient
WHERE taille <= (SELECT MIN(taille) FROM participations);

SELECT DISTINCT *
FROM (sportifs NATURAL JOIN ((participations NATURAL JOIN dates) NATURAL JOIN evenements)) NATURAL JOIN appartient
WHERE taille >= (SELECT MAX(taille) FROM participations);

SELECT DISTINCT *
FROM (sportifs NATURAL JOIN ((participations NATURAL JOIN dates) NATURAL JOIN evenements)) NATURAL JOIN appartient
WHERE sex = 'F' AND medaille = 'Gold' AND annee = 1920 AND tno = 'FRA'
ORDER BY annee ASC;
