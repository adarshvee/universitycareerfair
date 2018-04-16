# How much food of each kind should I order for recruiters who are coming today?
USE careerfair;

DROP PROCEDURE IF EXISTS getFoodPreferences;
DELIMITER $$
CREATE PROCEDURE getFoodPreferences
(IN fairdate datetime)
BEGIN
	SELECT o.food_preference AS 'Food Preference', COUNT(o.org_rep_num) AS '# Orders' FROM org_rep o
    INNER JOIN (SELECT DISTINCT(org_rep_num) FROM org_rep_rsvp ors WHERE ors.slot_num IN (
		SELECT b.slot_num FROM booking_slot b WHERE DATE(b.start_time) <= DATE(fairdate) AND 
		DATE(b.end_time) <= DATE(fairdate))) AS rsvpd_rep
    ON rsvpd_rep.org_rep_num = o.org_rep_num
    GROUP BY o.food_preference
    ORDER BY o.food_preference;
END$$

SET @inDate = '2017-12-13 12:00:00';

CALL getFoodPreferences(@inDate);

