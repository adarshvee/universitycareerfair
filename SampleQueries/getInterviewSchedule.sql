# Which organizations that visit today are not visiting tomorrow?
USE careerfair;

DROP PROCEDURE IF EXISTS getInterviewSchedule;
DELIMITER $$
CREATE PROCEDURE getInterviewSchedule
(IN fname varchar(60), IN mname varchar(50), IN lname varchar(50))
BEGIN
	#SELECT * FROM role_listing
    IF fname = '' THEN
		SET fname = null;
	END IF;
    
    IF mname = '' THEN
		SET mname = null;
	END IF;
    
    IF lname = '' THEN
		SET lname = null;
	END IF;
    
    SELECT concat(u.fname, ' ', u.lname) AS 'Student', i.interview_date AS 'Date', i.start_time AS 'Start Time', i.duration AS 'Duration (hrs)',
    i.interview_location AS 'Location', i.notes AS 'Address', 
    u2.fname + ' ' + u2.lname AS 'Organization contact', o.phone1 AS 'Contact ph. #', o.phone2  AS 'Contact Alt. Ph. #'
    FROM student s JOIN user_list u ON u.uname = s.uname AND NULLIF(u.fname,'') <=> fname
    AND NULLIF(u.mname,'')<=> mname AND NULLIF(u.lname,'') <=> lname
    JOIN interview_schedule i ON i.student_num = s.student_num
    JOIN org_rep o ON o.org_rep_num = i.org_contact
    JOIN user_list u2 ON u2.uname = o.uname;    
END$$

SET @fname = 'Adarsh';
SET @mname = '';
SET @lname = 'Vijayaraghavan';
CALL getInterviewSchedule(@fname, @mname, @lname);
