-- Step 1: Analyze the Crime Scene Report
-- ---------------------------------------
-- We begin by locating the initial crime report to understand:
-- - When and where the crime occurred
-- - Any hints about witnesses or the event itself
-- 
-- This helps us narrow down the scope of investigation to a specific event.

SELECT * FROM crime_scene_report
WHERE lower(type) = 'murder' 
AND date = '20180115' 
AND city = 'SQL City'
