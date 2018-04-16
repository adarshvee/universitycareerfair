# Show active roles
USE careerfair;

SELECT r.designation AS 'ROLE', MAX(r.gpa_reqd) AS 'GPA' , MAX(r.st_dt) AS 'START DATE',
MAX(CONCAT(r.duration div 12, ' years and ',r.duration div 12, ' months'))  AS 'DURATION', MAX(r.wrk_city) AS 'City', 
MAX(r.wrk_state) AS 'STATE', MAX(r.wrk_country) AS 'Country', 
MAX(CASE r.is_internship WHEN 1 THEN 'YES' ELSE 'NO' END) AS 'Internship?', MAX(r.num_hrs_per_week) AS '# hrs/week', 
MAX(CASE r.can_entry_level_apply  WHEN 1 THEN 'YES' ELSE 'NO' END) AS 'Open for entry level?',
GROUP_CONCAT(DISTINCT(s.skill_name) SEPARATOR '; ') AS 'Skills', GROUP_CONCAT(DISTINCT(rsm.expertise) SEPARATOR '; ') AS 'Expertises (in order)', 
GROUP_CONCAT(DISTINCT(CONCAT(rsm.reqd_ex div 12, ' years and ',rsm.reqd_ex div 12, ' months')) SEPARATOR '; ') AS 'Exp Reqd (in order)',
GROUP_CONCAT(DISTINCT(rlm.lang_name) SEPARATOR '; ') AS 'Languages',  GROUP_CONCAT(DISTINCT(m.mjr_name) SEPARATOR '; ') AS 'Majors'
FROM role_listing r
JOIN role_skill_mapping rsm ON r.role_num = rsm.role_num
	LEFT JOIN role_lang_mapping rlm ON rlm.role_num = r.role_num
	LEFT JOIN role_major_mapping rmm ON rmm.role_num = r.role_num
    LEFT JOIN skill s ON s.skill_num = rsm.skill_num
    LEFT JOIN major_list m ON m.mjr_num = rmm.mjr_num
    GROUP BY r.designation
    HAVING MIN(r.is_active) = 1;
    




