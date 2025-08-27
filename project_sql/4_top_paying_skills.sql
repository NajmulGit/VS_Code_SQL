
/*
Question: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst position
- Focuses on roles with specified salaries, regardless of location
- Why? it revels how different skills impact salary levels for Data Analyst and help
 identify the most financilally rewarding skills to acquire or improve
 */


 SELECT
    skills,
    Round(avg(salary_year_avg), 0) AS Avg_salary

FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
 WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg is NOT NULL AND
    job_work_from_home = TRUE

GROUP BY
    skills
ORDER BY
    Avg_salary DESC
LIMIT 25

/*
Key Trends in High-Paying Data Analyst Skills (2025)
Big Data & Cloud Pay the Most → Skills like PySpark, Databricks, Airflow, and GCP show that analysts who can work with large-scale, cloud-based data systems earn the highest salaries.

ML & Advanced Analytics Drive Premiums → Tools like DataRobot, Watson, and Scikit-learn highlight that machine learning and AI knowledge are now major salary boosters.

Collaboration + Programming Versatility Matter → GitLab, Bitbucket, Jenkins, plus programming beyond Python (Scala, Golang, Swift) show that analysts who fit into modern dev workflows and tech stacks stand out.
[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
]
*/