/*Question 1. A new research scientist who loves to travel joins the firm and is told by HR 
that his job role is one of the top two roles in terms of employees that travel frequently. 
Is HR right in saying so? Why or Why not?
Translation:
Cleanup: */


SELECT jobrolemaster.RoleDescription, count(jobrolemaster.RoleDescription) AS 'Number of Employees', travelmaster.Travel_Description
FROM employee JOIN travelmaster ON employee.TravelMaster_Travel_ID = travelmaster.Travel_ID
JOIN jobrolemaster ON employee.JobRoleMaster_Role_ID = jobrolemaster.Role_ID
WHERE travelmaster.Travel_ID = '2'
GROUP BY jobrolemaster.RoleDescription
ORDER BY count(jobrolemaster.RoleDescription) desc;
