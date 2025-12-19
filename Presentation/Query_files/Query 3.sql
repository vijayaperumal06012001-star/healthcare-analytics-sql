/*3.Right Join and Aggregate Functions
Task: Find the total number of diagnoses for each doctor, including doctors who haven’t diagnosed any patients. Display the doctor’s name, specialization, and total diagnoses.
 Expected Learning: Utilization of Right Joins with aggregate functions like COUNT().*/
 
 select * from diagnoses;
 select * from doctors;
 
select di.doctor_id, d.name, d.specialization, count(di.diagnosis) as total_diagnosis from doctors d
right join diagnoses di on d.doctor_id = di.doctor_id
group by di.doctor_id, d.name, d.specialization
order by di.doctor_id; 