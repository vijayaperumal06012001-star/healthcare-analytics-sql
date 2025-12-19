/*7.Numeric and String Functions
Task: Retrieve a list of patients whose contact numbers end with "1234" and display their names in uppercase.
 Expected Learning: Use of string functions like UPPER() and LIKE.*/
 
 select * from patients;
 
 select upper(name), contact_number from patients
 where contact_number like '%1234';