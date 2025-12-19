/*5.Window Functions (Ranking and Aggregation)
Task: For each doctor, rank their patients based on the number of appointments in descending order.
 Expected Learning: Application of Ranking Functions such as RANK() or DENSE_RANK().*/
 
 select * from doctors;
 select * from patients;
 select * from appointments;
 
 select doctor_id, patient_id, total_appointments, rank() over( partition by doctor_id order by total_appointments desc) 
 as rank_per_doctor
 from (select doctor_id, patient_id, count(*) as total_appointments
from appointments
group by doctor_id, patient_id)
 as appoint_summary
 order by doctor_id, rank_per_doctor;
 
 
 
 
 
 
 
 
 
 
 
 
 /*
 select doctor_id, patient_id, count(*) as total_appointments, dense_rank() over( partition by doctor_id order by count(*) desc) 
 as rank_per_doctor
 from appointments
 group by doctor_id, patient_id
 order by doctor_id, rank_per_doctor;*/
 
