-- Step 5: Track Down the Mastermind
-- ----------------------------------
-- The killer (Jeremy Bowers) admitted he was hired by someone else.
-- Clues about the employer:
-- - Red hair, height between 65–67 inches
-- - Drives a Tesla Model S
-- - Attended the SQL Symphony Concert exactly 3 times in Dec 2017
--
-- We'll first find all concert attendees who match the visit count,
-- then filter them based on the physical description and car details.

WITH event_attendees AS
(	
  	SELECT person_id, count(person_id) AS total_attendance 
  	FROM facebook_event_checkin
	WHERE event_name = 'SQL Symphony Concert' 
		AND date BETWEEN 20171201 AND 20171231
	GROUP BY person_id
		HAVING count(person_id) = 3
)

SELECT p.name FROM event_attendees e
INNER JOIN person p ON e.person_id = p.id
INNER JOIN drivers_license d ON p.license_id = d.id
WHERE d.hair_color = 'red'
AND d.height BETWEEN 65 AND 67
AND d.car_make = 'Tesla'
AND d.car_model = 'Model S';
