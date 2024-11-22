USE time_riff;

SELECT 
    a.title AS album_title,
    a.release_date,
    b.name AS band_name,
    bm.name AS member_name,
    TIMESTAMPDIFF(YEAR, bm.birth_date, a.release_date) AS member_age_at_release
FROM 
    album a
JOIN 
    band b ON a.band_id = b.id
JOIN 
    band_member bm ON b.id = bm.band_id
ORDER BY 
    b.name ASC, a.release_date ASC;


SET @user_age = 36;

SELECT 
    a.title AS album_title,
    a.release_date,
    b.name AS band_name,
    bm.name AS member_name,
    TIMESTAMPDIFF(YEAR, bm.birth_date, a.release_date) AS member_age_at_release
FROM 
    album a
JOIN 
    band b ON a.band_id = b.id
JOIN 
    band_member bm ON b.id = bm.band_id
WHERE 
    TIMESTAMPDIFF(YEAR, bm.birth_date, a.release_date) < @user_age
ORDER BY 
    b.name ASC, a.release_date ASC;
    