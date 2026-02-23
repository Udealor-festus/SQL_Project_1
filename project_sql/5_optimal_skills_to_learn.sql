/**
 Answer: What are the most optimal skills to learn (aka it's oin hight demand and a high-paying skill)?
 -Identify skills in high demand and associated with high averagae salaties for Data Analyst roles
 - Concentrates o nremote positions with specified salaries
 - Why? Target skills that offer job security (high demand) and financial benefits (high salaries),
 offering strategic insighes for career development in data analysis
 **/
with skills_demand AS (
    SELECT skills_dim.skill_id,
        skills,
        COUNT(skill_to_job.skill_id) as demand_count
    FROM job_postings_fact as top_paying_jobs
        INNER JOIN skills_job_dim as skill_to_job on top_paying_jobs.job_id = skill_to_job.job_id
        INNER JOIN skills_dim ON skill_to_job.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Analyst'
        AND salary_year_avg is NOT NULL
        AND job_work_from_home = TRUE
    GROUP BY skills_dim.skill_id
    LIMIT 100
), average_salary as (
    SELECT skills_dim.skill_id,
        skills,
        ROUND(avg(salary_year_avg)) as avg_salary
    FROM job_postings_fact as top_paying_jobs
        INNER JOIN skills_job_dim as skill_to_job on top_paying_jobs.job_id = skill_to_job.job_id
        INNER JOIN skills_dim ON skill_to_job.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Analyst'
        AND job_work_from_home = TRUE
        AND salary_year_avg is NOT NULL
    GROUP BY skills_dim.skill_id
    LIMIT 100
)
SELECT skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_salary
FROM skills_demand
    INNER JOIN average_salary ON average_salary.skill_id = skills_demand.skill_id;