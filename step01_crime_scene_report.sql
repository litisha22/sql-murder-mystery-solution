SELECT * FROM crime_scene_report
WHERE lower(type) = 'murder' 
AND date = '20180115' 
AND city = 'SQL City'
