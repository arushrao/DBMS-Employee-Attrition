/*Question 2. The company has been paying gas expenses for miles traveled by employees between their home and work. 
If they want to increase the per mile compensation, which department's employees will gain the least?
Translation:
Cleanup: */

SELECT empdepartment.Dept_Description AS 'Department', avg(employee.DistanceFromHome) AS 'Average Distance from Work'
FROM empdepartment
JOIN employee ON employee.EmpDepartment_Dept_ID = empdepartment.Dept_ID
GROUP BY empdepartment.Dept_Description
ORDER BY avg(employee.DistanceFromHome);