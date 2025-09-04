-- Step 3: Analyze Witness Interviews
-- -----------------------------------
-- Now that we’ve identified the witnesses, we retrieve their interview records.
-- These interviews usually contain important clues like physical descriptions,
-- vehicle details, timelines, and locations — all essential for narrowing suspects.

SELECT * FROM interview
WHERE person_id IN (14887, 16371);
