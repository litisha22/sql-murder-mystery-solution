-- Step 2: Identify Potential Witnesses
-- -------------------------------------
-- Based on the crime scene report, two people witnessed the murder:
-- 1. One who lives on "Northwestern Dr" at the highest-numbered house
-- 2. Another named "Annabel" on "Franklin Ave"
--
-- We'll search the 'person' table to find these individuals.

-- Witness 1: Northwestern Dr
SELECT * FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

-- Witness 2: Annabel on Franklin Ave
SELECT * FROM person
WHERE name LIKE '%Annabel%'
  AND address_street_name = 'Franklin Ave';
