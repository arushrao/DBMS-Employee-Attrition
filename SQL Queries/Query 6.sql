/*Question: 6.	A press article in a business magazine has said that at this company, 
Marital status of women in Research & Development has severely affected their promotion rates. 
What initial finding can you obtain from the data to help articulate the company's response in this regard? 
Translation:
Cleanup: */

SELECT employee.MaritalStatus, employee.Gender ,empdepartment.Dept_Description AS 'Department', avg(empreview.YearsSinceLastPromotion) AS 'Average Years Since Last Promotion'
FROM employee
JOIN empdepartment ON empdepartment.Dept_ID = employee.EmpDepartment_Dept_ID
JOIN empreview ON empreview.Employee_Employee_ID = employee.Employee_ID
WHERE employee.Gender LIKE '%Female%' AND empdepartment.Dept_ID = 2 AND employee.HireYear <> 2020
GROUP BY employee.MaritalStatus;



