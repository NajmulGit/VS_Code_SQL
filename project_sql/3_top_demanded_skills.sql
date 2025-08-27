/*
Question: What are the most in-demand skills for Data Analysts?
- Join job postings to inner join table similer to query 2
- Identify the top 5 in-demand skills for a Data Analysts
- Focus on all job postings
- Why? Retrives the top 5 skills with the highest demand in the job market,
 providing insights into the most valuable skills for the job seekers.
*/


SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_work_from_home = TRUE

GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5