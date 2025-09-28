SELECT job_id, max(salary)
FROM employees
GROUP BY job_id
HAVING max(salary) < (SELECT max(salary)
					  FROM employees
					  WHERE job_id = "HR_REP");