/*6.Conditional Expressions
Task: Write a query to categorize patients by age group (e.g., 18-30, 31-50, 51+). Count the number of patients in each age group.
 Expected Learning: Using CASE statements for conditional logic.*/
 
 select * from patients;
 
 select  *,
 case 
 when age >= 18 and age <= 30 then '18-30'
 when age >= 31 and age <= 50 then '31-50'
 else '51+'
 end as age_group
 from patients;