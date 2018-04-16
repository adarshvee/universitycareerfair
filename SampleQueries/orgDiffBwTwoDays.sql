# Which organizations that visit today are not visiting tomorrow?
USE careerfair;

DROP PROCEDURE IF EXISTS orgDiffBwTwoDays;
DELIMITER $$
CREATE PROCEDURE orgDiffBwTwoDays
(IN day1 datetime, IN day2 datetime)
BEGIN
	SELECT o.org_name AS 'Organisation', o.overview AS 'Overview', o.url AS 'Website', 
    o.industry AS 'Industry', o.verifiedstatus 
    AS 'Verified Status' FROM organisation o INNER JOIN
    (SELECT DISTINCT(org_num) AS 'org_num' FROM stall_booking WHERE slot_num IN
    (SELECT b.slot_num FROM booking_slot b WHERE DATE(b.start_time) = DATE(day1)) AND
	org_num NOT IN
    (SELECT DISTINCT(org_num) AS secondOrgNum FROM stall_booking WHERE slot_num IN
    (SELECT b.slot_num FROM booking_slot b WHERE DATE(b.start_time) = DATE(day2)))
    ) AS reqd_org_num
    ON o.org_num = reqd_org_num.org_num;
END$$



SET @inDate1 = '2017-12-13 12:00:00';
SET @inDate2 = '2017-12-14 12:00:00';
CALL orgDiffBwTwoDays(@inDate1, @inDate2);



