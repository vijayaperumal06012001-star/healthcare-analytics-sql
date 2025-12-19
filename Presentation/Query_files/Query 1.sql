/*1.Inner and Equi Joins
Task: Write a query to fetch details of all completed appointments, including the patient’s name, doctor’s name, and specialization.
 Expected Learning: Demonstrates understanding of Inner Joins and filtering conditions.*/


select a.appointment_id, p.name, d.name, d.specialization from  appointments a
inner join patients p on a.patient_id = p.patient_id
inner join doctors d on a.doctor_id = d.doctor_id
where status = 'completed';

/* according to this query, i retrived the data of completed appointments with the specialized doctors with the corcern patients.
so, with these details we can know which specialized doctors attended the which patients including the appointment id*/
