
# Introduction 
Dive into the data job market! Focusing on data analyst toles, this project explores top-paying jobs,  in-demand skills and where high demand meets high salary in data analystics.

SQL queries? Check them out here [Project_sql folder](/project_sql/)
# Background 
The data used in this project comes from a structured SQL course dataset 
provided by Luke Barousse. The dataset contains detailed information on data-related job postings, 
including job titles, salaries, locations, and associated technical skills.

This dataset is well-suited for exploring trends in the data analyst job market, 
as it allows for salary-based analysis, skill demand comparisons, and role-specific insights.
# Questions
Through SQL analysis, I sought to answer the following questions:

1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying roles?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn based on demand and salary?


# Tools I Used

To conduct this analysis, I used the following tools:

- **SQL**: The core language used to query and analyze the dataset.
- **PostgreSQL**: The database management system used to store and manage the job posting data.
- **Visual Studio Code**: Used to write and execute SQL queries.
- **Git & GitHub**: Used for version control and sharing the project files and SQL scripts.

# The Analysis
### Number of Records per Table
Purpose:
To confirm that tables were created correctly and populated with data.

``` SQL 
SELECT
    table_name,
    COUNT(*) AS row_count
FROM information_schema.tables t
JOIN pg_stat_user_tables s
    ON t.table_name = s.relname
GROUP BY table_name;
```
### Database Overview
![Records per Table](/assest/records_per_table.png)
*This chart illustrates the size of each table in the database. The job postings and job–skill relationship tables contain the largest number of records, confirming that the dataset is sufficiently large for meaningful analysis of job trends and skill demand.*
![Columns per Table](/assest/columns_per_table.png)
*This plot highlights the schema complexity of the database by showing the number of columns per table. Fact tables contain more attributes, while dimension tables remain compact and focused, reflecting a well-structured analytical database design.*
![Foreign Keys](/assest/foreign_keys.png)
*This chart shows the number of foreign key relationships per table. The presence of multiple foreign keys in the job–skill mapping table emphasizes its central role in linking job postings with required skills.*


Each SQL query in this project was designed to answer a specific question about the data analyst job market.

### 1. Top-Paying Data Analyst Jobs

I identified the highest-paying data analyst roles by filtering jobs with non-null salary values, ordering them by average yearly salary, and focusing on remote-friendly positions.

##### Key insights:

Top salaries ranged from approximately $184,000  to  $650,000, highlighting strong earning potential.

High-paying roles span various seniority levels, from Data Analyst to Director of Analytics.

Employers offering top salaries come from diverse industries, indicating widespread demand for analytics expertise.

![ Top Paying Data Analyst Roles](/assest/top_paying_data_skils.png)

### 2. Skills Required for Top-Paying Jobs

This analysis examined which skills are most frequently associated with the highest-paying data analyst positions.

#### Key insights:

SQL consistently appears as a foundational requirement for top-paying roles.

High salaries are often linked to advanced or specialized technical skills rather than general tools alone.
### 3. Most In-Demand Skills for Data Analysts

To understand market demand, I analyzed how frequently specific skills appeared across all job postings.

#### Key insights:

SQL is the most demanded skill overall, reinforcing its importance for data analysts.

Programming languages such as Python and R remain highly sought after, though they are more widely available in the talent pool.
![In_demand_skilss](/assest/demand%20for%20core%20data%20skilss.png)

### 3. Skills Associated with Higher Salaries

This step focused on identifying which skills command the highest average salaries.

Key insights:

Niche and specialized skills (e.g., SVN, Solidity) are associated with significantly higher average salaries.

High pay is often linked to skills that overlap with engineering, infrastructure, or advanced analytics roles.

5. Optimal Skills to Learn

By combining demand and salary metrics, I identified skills that offer strong market value.

Key insights:

Core skills like SQL provide broad job opportunities.

Cloud platforms, big-data tools, and specialized technologies offer higher salary potential for those willing to deepen their expertise.


Most In-Demand Skills
![No 0f Skills to learn ](/assest/skills_per_role.png)


# What I Learned

Through this project, I significantly strengthened my SQL and analytical skills, including:

- **Complex Query Writing**: Improved my ability to join multiple tables and use CTEs (`WITH` clauses) 
  to structure readable and efficient queries.
- **Data Aggregation**: Gained confidence using `GROUP BY` with aggregate functions such as 
  `COUNT()` and `AVG()` to summarize large datasets.
- **Analytical Thinking**: Enhanced my ability to translate real-world questions into 
  meaningful SQL queries that generate actionable insights.

# Conclusion 

### Key Takeaways

This analysis revealed several important insights about the data analyst job market:

1. Top-paying data analyst roles offer a wide salary range, with some remote positions reaching exceptionally high compensation.
2. SQL stands out as both the most in-demand skill and a core requirement for high-paying roles.
3. Specialized and niche technical skills are often associated with higher average salaries.
4. Combining high-demand skills with salary insights provides a practical roadmap for skill development.

### Closing Thoughts
This project not only strengthened my SQL capabilities but also deepened my understanding 
of how data-driven insights can guide career decisions. By focusing on high-demand, high-value skills, 
aspiring data analysts can position themselves more competitively in the job market. 
Continuous learning and adaptation remain essential in this rapidly evolving field.

