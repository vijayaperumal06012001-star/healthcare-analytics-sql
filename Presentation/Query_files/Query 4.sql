/*4.Full Join for Overlapping Data
Task: Write a query to identify mismatches between the appointments and diagnoses tables. Include all appointments 
and diagnoses with their corresponding patient and doctor details.
 Expected Learning: Handling Full Joins for comparing data across multiple tables.*/
 
 use healthcare;
 select * from appointments;
 select * from diagnoses;
 select * from doctors;
 select * from patients;

 select d.doctor_id, d.name, p.patient_id, p.name, 'appointment only' as source from appointments a
 left join diagnoses di on a.doctor_id = di.doctor_id and a.patient_id = di.patient_id
 join doctors d on d.doctor_id = a.doctor_id
 join patients p on p.patient_id = a.patient_id
 where di.diagnosis_id is null
 union 
select d.doctor_id, d.name, p.patient_id, p.name, 'diagnoses only' as source from diagnoses di
 left join appointments a on di.doctor_id = a.doctor_id and di.patient_id = a.patient_id
 join doctors d on di.doctor_id = d.doctor_id
 join patients p on di.patient_id = p.patient_id
 where a.appointment_id is null; 
 