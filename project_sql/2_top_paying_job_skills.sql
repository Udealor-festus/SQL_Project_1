/**QUestion: What skills are required for the top-paying data analyst jobs?
 - Use the top 10 highest-paying Data Analyst jobs from first query
 -Add the sepcific skills required for these roles
 -Why? It provides a detailed look at which high-paying jobs demand certain skills,
 helping job seekers understand which skills to develop that align with top salaries
 **/
WITH top_paying_jobs as (
    SELECT job_id,
        name as company_name,
        job_title,
        salary_year_avg
    FROM job_postings_fact
        LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE salary_year_avg IS NOT NULL
        AND job_location = 'Anywhere'
        and job_title_short = 'Data Analyst'
    ORDER BY salary_year_avg DESC
    LIMIT 10
)
SELECT top_paying_jobs.*,
    skills
FROM top_paying_jobs
    INNER JOIN skills_job_dim as skill_to_job on top_paying_jobs.job_id = skill_to_job.job_id
    INNER JOIN skills_dim ON skill_to_job.skill_id = skills_dim.skill_id;
/**🔍 Key Insights from the Skills Analysis (Top Data Analyst Roles – 2023)
 1️⃣ SQL is non-negotiable
 SQL appears in ~80% of the roles
 It’s the single most demanded skill
 Confirms that data extraction, joins, and querying production databases are still the backbone of data analyst jobs
 👉 If you don’t know SQL well, you’re locked out of most analyst roles.
 
 2️⃣ Python > R (but both still matter)
 Python (7 roles) is almost twice as common as R (4 roles)
 Python dominates because of:
 Pandas / NumPy for data wrangling
 Integration with ML and production pipelines
 👉 R is still relevant, but Python is the safer long-term bet, especially outside academia.
 
 3️⃣ BI & Visualization tools are essential
 Tableau (6 roles)
 Power BI (2 roles)
 Excel (3 roles)
 This shows that companies expect analysts to:
 Go beyond analysis
 Communicate insights visually to non-technical stakeholders
 👉 Strong analysts = SQL + Python + BI tool
 
 
 
 
 [
 {
 "skill_id": 0,
 "skills": "sql",
 "type": "programming"
 },
 {
 "skill_id": 1,
 "skills": "python",
 "type": "programming"
 },
 {
 "skill_id": 2,
 "skills": "nosql",
 "type": "programming"
 },
 {
 "skill_id": 3,
 "skills": "scala",
 "type": "programming"
 },
 {
 "skill_id": 4,
 "skills": "java",
 "type": "programming"
 },
 {
 "skill_id": 5,
 "skills": "r",
 "type": "programming"
 },
 {
 "skill_id": 6,
 "skills": "shell",
 "type": "programming"
 },
 {
 "skill_id": 7,
 "skills": "sas",
 "type": "programming"
 },
 {
 "skill_id": 8,
 "skills": "go",
 "type": "programming"
 },
 {
 "skill_id": 9,
 "skills": "javascript",
 "type": "programming"
 }
 ]
 
 **/