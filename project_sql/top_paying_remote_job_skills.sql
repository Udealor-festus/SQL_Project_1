WITH remote_job_skills AS (
    SELECT skill_id,
        COUNT(*) AS skill_count
    FROM skills_job_dim as skills_to_job
        INNER JOIN job_postings_fact as job_posting on skills_to_job.job_id = job_posting.job_id
    WHERE job_posting.job_work_from_home = TRUE
        AND job_posting.job_title = 'Data Analyst'
    GROUP BY skill_id
)
SELECT skills.skill_id,
    skills as skill_name,
    skill_count
FROM remote_job_skills
    INNER JOIN skills_dim AS skills ON skills.skill_id = remote_job_skills.skill_id
ORDER BY skill_count DESC
LIMIT 5;
SELECT *
FROM skills_job_dim
LIMIT 50;
SELECT *
FROM skills_dim
LIMIT 50;