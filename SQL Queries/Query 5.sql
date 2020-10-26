/*Question 5. An employee from Life Sciences education field working in Research & Development department has complained to HR 
that employees with her educational background are paid more in Sales department than in Research & Development. 
What insight can you provide to prove or disprove that statement?
Translation:
Cleanup: */

SELECT empdepartment.Dept_Description AS 'Department', educationfieldmaster.EduField_Description AS 'Education Field', avg(empsalary.MonthlyIncome) AS 'Average Monthly Income'
FROM empdepartment
JOIN employee ON employee.EmpDepartment_Dept_ID = empdepartment.Dept_ID
JOIN educationfieldmaster ON educationfieldmaster.EduField_ID = employee.EducationFieldMaster_EduField_ID
JOIN empsalary ON empsalary.Employee_Employee_ID = employee.Employee_ID
WHERE educationfieldmaster.EduField_ID = 2 AND (empdepartment.Dept_ID = 1 OR empdepartment.Dept_ID = 2)
GROUP BY empdepartment.Dept_Description
ORDER BY avg(empsalary.MonthlyIncome);


