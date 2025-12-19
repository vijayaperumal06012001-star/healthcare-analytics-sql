/*10.Complex Joins and Aggregation
Task: Write a query to identify the doctor who has attended the most unique patients. Include the doctor’s name, 
specialization, and the count of unique patients.
 Expected Learning: Combining Joins, Grouping, and COUNT(DISTINCT).*/
 
 select * from patients;
 select * from doctors;
 
select d.doctor_id, d.name as doctor_name, d.specialization, count(distinct a.patient_id) as unique_patient_count from doctors d
left join appointments a on d.doctor_id = a.doctor_id
group by d.doctor_id, d.name, d.specialization
order by unique_patient_count desc
limit 1;