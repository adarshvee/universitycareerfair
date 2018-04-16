USE careerfair;
SELECT s.skill_name AS 'Skill', COUNT(rs.role_num) AS '# Openings' FROM role_skill_mapping rs
INNER JOIN skill s ON rs.skill_num = s.skill_num
GROUP BY (s.skill_name) LIMIT 5;

