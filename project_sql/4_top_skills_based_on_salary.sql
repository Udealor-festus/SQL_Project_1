/**Answer: What are the top skills based on salary?
 -Look at the average salary associated with each skill for Data Analyst positions
 - FOcuses on roles with specified salaties, regardless of location 
 - Why? It reveals how  different impact salary levels for Data Analysts and 
 helps identify the most financially rewarding skills to acquire or improve
 **/
SELECT skills,
    ROUND(avg(salary_year_avg)) as avg_salary
FROM job_postings_fact as top_paying_jobs
    INNER JOIN skills_job_dim as skill_to_job on top_paying_jobs.job_id = skill_to_job.job_id
    INNER JOIN skills_dim ON skill_to_job.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
    AND job_work_from_home = TRUE
    AND salary_year_avg is NOT NULL
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25;
/** 
 
 The salary distribution shows that the highest-paying “data analyst” skills are increasingly tied to software engineering and infrastructure rather than traditional analytics.
 Tools such as Terraform, Kafka, Airflow, and Cassandra indicate that roles commanding top pay are those responsible for building and maintaining data pipelines and platforms, not just analyzing outputs.
 
 Machine learning frameworks like TensorFlow, PyTorch, Keras, Hugging Face, and AutoML tools such as DataRobot appear consistently among high-paying skills, suggesting that
 analysts who can move models into production or support AI workflows are significantly more valuable in the job market.
 
 Programming languages such as Golang, Scala, Perl, and even Solidity point to a strong overlap between data analytics and backend or distributed system development, where scarcity of talent 
 and system complexity drive salaries upward.
 
 The presence of DevOps and orchestration tools reflects a market shift toward hybrid roles where analysts are expected to ensure reliability, automation, and scalability of data systems,
 blurring the line between analyst, data engineer, and platform engineer.
 
 Finally, collaboration and version-control tools ranking highly implies that many of these roles are senior or leadership-oriented, where ownership of data infrastructure, governance,
 and team workflows is rewarded financially rather than pure analytical output alone.
 
 [
 {
 "skills": "svn",
 "avg_salary": "400000"
 },
 {
 "skills": "solidity",
 "avg_salary": "179000"
 },
 {
 "skills": "couchbase",
 "avg_salary": "160515"
 },
 {
 "skills": "datarobot",
 "avg_salary": "155486"
 },
 {
 "skills": "golang",
 "avg_salary": "155000"
 },
 {
 "skills": "mxnet",
 "avg_salary": "149000"
 },
 {
 "skills": "dplyr",
 "avg_salary": "147633"
 },
 {
 "skills": "vmware",
 "avg_salary": "147500"
 },
 {
 "skills": "terraform",
 "avg_salary": "146734"
 },
 {
 "skills": "twilio",
 "avg_salary": "138500"
 },
 {
 "skills": "gitlab",
 "avg_salary": "134126"
 },
 {
 "skills": "kafka",
 "avg_salary": "129999"
 },
 {
 "skills": "puppet",
 "avg_salary": "129820"
 },
 {
 "skills": "keras",
 "avg_salary": "127013"
 },
 {
 "skills": "pytorch",
 "avg_salary": "125226"
 },
 {
 "skills": "perl",
 "avg_salary": "124686"
 },
 {
 "skills": "ansible",
 "avg_salary": "124370"
 },
 {
 "skills": "hugging face",
 "avg_salary": "123950"
 },
 {
 "skills": "tensorflow",
 "avg_salary": "120647"
 },
 {
 "skills": "cassandra",
 "avg_salary": "118407"
 },
 {
 "skills": "notion",
 "avg_salary": "118092"
 },
 {
 "skills": "atlassian",
 "avg_salary": "117966"
 },
 {
 "skills": "bitbucket",
 "avg_salary": "116712"
 },
 {
 "skills": "airflow",
 "avg_salary": "116387"
 },
 {
 "skills": "scala",
 "avg_salary": "115480"
 }
 ]