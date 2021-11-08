# Employee-Database-SQL
1.	Overview of the analysis: Explain the purpose of this analysis. 
2.	
o	The purpose of this analysis was twofold, in keeping with the nature of Hewlett Packard’s retirement-related needs. The first part of the analysis delineated the total number of employees that will be eligible for retirement in the next three years, as broken down by title. It also listed these employees, along with their most recent title, their names, employee numbers, and the dates that they began and ended (if they have already) work for HP. The analysis also retrieved the total number and a list of employees who are eligible to participate as mentors in a mentorship program.

2.	Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

o	Approximately 20% of the total number of HP employees listed in the database will be eligible for retirement over the next three years. Additionally, approximately 30% of the currently employed workforce will be eligible for retirement over the next three years.

o	90398 distinct employees are up for retirement within the next three years, although per the instructions this does not filter for employees who have already left the firm.

o	Approximately a third of the retiring individuals are either Engineers or Senior Staff.

![image](https://user-images.githubusercontent.com/90073490/140820177-a2419510-22e0-4d33-b714-29e0866cf36a.png)

o	There are only 1,549 mentors eligible for mentorship based on the given eligibility criterion. That is only approximately 2.2% of the total number eligible for retirement.

3.	Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

o	How many roles will need to be filled as the "silver tsunami" begins to make an impact?

•	There are 90398 distinct employees whose birthdays indicate that they will be retiring over the next three years.

o	Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

•	Only 1549 employees are eligible to be mentors in the mentorship program according to the current parameters. Compared to the 90398 employees in the database who will potentially be retiring over the next three years, this is almost certainly not enough to cover the spread.

o	Per the instructions, the previous tables did not filter out people who had already left HP. After doing that, the total number of positions that will need to be filled drops significantly. This analysis is shown below:

![image](https://user-images.githubusercontent.com/90073490/140820220-bd724369-4b32-4703-81da-f17d4b86756a.png)

o	I also filtered the mentorship candidates in the same manner as the above, and joined them to the above table to illustrate the distribution of mentors to retirees by title. As the table shows, Engineer and Staff positions have more than double the rate of mentors to position openings when compared to Senior Engineer and Senior Staff positions.

![image](https://user-images.githubusercontent.com/90073490/140820267-c647e7b4-ee29-44cd-a2c3-97c861de6247.png)
