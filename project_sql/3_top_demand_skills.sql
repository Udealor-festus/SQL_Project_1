/**Question: What are the most in-demand skills for data analyst?
 - Join ojob positns to inner table similar to query 2
 - Identify top 5 in-demand skills fo a data analyst
 - Focus on all job job postings 
 - Why? Retrieves the top 5 skills with the highest demand in the job market,
 providing insights into the most valuable skills for the job seekers
 **/
SELECT skills,
    COUNT(skill_to_job.skill_id) as demand_count
FROM job_postings_fact as top_paying_jobs
    INNER JOIN skills_job_dim as skill_to_job on top_paying_jobs.job_id = skill_to_job.job_id
    INNER JOIN skills_dim ON skill_to_job.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
    AND job_work_from_home = TRUE
GROUP BY skills
ORDER BY demand_count DESC
LIMIT 5;