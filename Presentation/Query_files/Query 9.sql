/*9.Date and Time Functions
Task: Calculate the average duration (in days) for which medications are prescribed for each diagnosis.
 Expected Learning: Working with date functions like DATEDIFF().*/
 
 select m.diagnosis_id, avg(datediff(m.end_date, m.start_date)) as avg_duration_days from medications m
 where start_date is not null and end_date is not null
 group by m.diagnosis_id;