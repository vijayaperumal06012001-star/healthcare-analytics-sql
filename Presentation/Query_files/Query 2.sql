/*2.Left Join with Null Handling
Task: Retrieve all patients who have never had an appointment. Include their name, contact details, and address in the output.
 Expected Learning: Use of Left Joins and handling NULL values.*/
 
 select * from patients;
 select * from appointments;
 
 select p.name,p.contact_number, p.address from patients p
 left join appointments a on p.patient_id = a.patient_id
where a.appointment_id is null;
 
 /* with this above query, I have fetched list of patients details with contact number and address, 
 that who doesn't have an appointnment yet using left join and null values*/