//retieve students whoes rank is 1 grouping across subjects -- beauty of no Group By
select roll_no,name,subject,marks
FROM
(select roll_no,name,subject,marks,
ROW_NUMBER() OVER (PARTITION BY subject ORDER BY marks DESC) as rank
from students_report) ranked_v
where ranked_v.rank = 1;
