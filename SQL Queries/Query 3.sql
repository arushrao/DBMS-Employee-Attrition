/*Question 3. A new employee with a Marketing degree wants to work in HR. 
Do you believe the company might be able to give him a chance to work in HR? Why or Why not?
Translation:
Cleanup: */

SELECT empdepartment.Dept_Description AS 'Department' , educationfieldmaster.EduField_Description AS 'Education Field'
FROM employee
JOIN empdepartment ON employee.EmpDepartment_Dept_ID = empdepartment.Dept_ID
JOIN educationfieldmaster ON employee.EducationFieldMaster_EduField_ID = educationfieldmaster.EduField_ID
WHERE EducationFieldMaster_EduField_ID = 3 AND empdepartment.Dept_ID = 3;