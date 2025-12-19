/*8.Subqueries for Filtering
Task: Find patients who have only been prescribed "Insulin" in any of their diagnoses.
 Expected Learning: Writing Subqueries for advanced filtering.*/
 
 select * from patients;
 select * from diagnoses;
 select * from medications;
 
 select p.patient_id, p.name from patients p 
 where p.patient_id in (
 select di.patient_id from diagnoses di
join medications m on di.diagnosis_id = m.diagnosis_id
group by di.patient_id
having count(distinct case when m.medication_name <> 'insulin' then m.medication_name end) = 0
and count(*) >0);
 









/*
select di.patient_id, m.medication_name from diagnoses di
join medications m on di.diagnosis_id = m.diagnosis_id
where medication_name = 'insulin';

select patient_id, prescription from (select di.patient_id, m.medication_name as prescription from diagnoses di
join medications m on di.diagnosis_id = m.diagnosis_id
where medication_name = 'insulin') as prescription_summary;

select p.patient_id, p.name from patients p
where p.patinet_id in(
select di.patient_id, m.medication_name from diagnoses di
join medications m on di.diagnosis_id = m.diagnosis_id 
where medication_name = 'insulin') as prescription_summary,
join patients p on di.patient_id = p.patinet_id
group by p.patient_id;
*/