/**Question: What are the top-paying analyst jobs?
 -  identidy the top 10 highest-paying Data Ananlyst roles that are available remotely.
 -  Focuses on the job posting with sepcified salaries (reomove nulls)
 -  Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment
 **/
SELECT job_id,
    name as company_name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE salary_year_avg IS NOT NULL
    AND job_location = 'London, UK'
    and job_title_short = 'Data Analyst'
ORDER BY salary_year_avg DESC
LIMIT 10;