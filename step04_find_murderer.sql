-- Step 4: Find the Murderer
-- ---------------------------
-- Using the clues from witness interviews:
-- - The murderer was seen at "Get Fit Now Gym"
-- - Has a membership ID starting with '48Z' and is a gold member
-- - Drove a car with license plate containing 'H42W'
-- - Checked in to the gym on 2018-01-09
--
-- We'll join membership, check-in, license, and person tables to find the match.

SELECT gc.membership_id, gm.membership_status,p.name, p.license_id, d.plate_number
FROM get_fit_now_check_in gc
INNER JOIN get_fit_now_member gm ON gc.membership_id = gm.id
INNER JOIN person p ON gm.person_id = p.id
INNER JOIN drivers_license d ON p.license_id = d.id
WHERE gc.membership_id LIKE '48Z%'
  AND gc.check_in_date = '20180109'
  AND lower(gm.membership_status) = 'gold'
  AND d.plate_number LIKE '%H42W%';
