/*Question 4. Sales feels that their environment satisfaction score is higher than HR,
but HR job satisfaction score is lower than Research & Development. Are they right?
Translation:
Cleanup: */

SELECT empdepartment.Dept_Description, avg(envsatisfaction.Env_ID) AS ' Average Environment Score',  avg(JobSatisfaction_JobSatis_ID) AS ' Average Job Satisfaction Score'
FROM empdepartment
JOIN employee ON employee.EmpDepartment_Dept_ID = empdepartment.Dept_ID
JOIN envsatisfaction ON envsatisfaction.Env_ID = employee.EnvSatisfaction_Env_ID
JOIN jobsatisfaction ON jobsatisfaction.JobSatis_ID = employee.JobSatisfaction_JobSatis_ID
GROUP BY empdepartment.Dept_Description
ORDER BY avg(envsatisfaction.Env_ID);