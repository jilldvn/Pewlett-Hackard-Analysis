# Pewlett-Hackard-Analysis
Module 7
### Overview of the analysis: Explain the purpose of this analysis.
  This prject is to create a database to drill down and summarize employees' names, IDs and titles for upcoming qualified retirement from multiple HR datasets. 
 
### Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
#### - Finding 1: 
  The image below describes employees' current postion for upcoming qualified retirement, titles that qualiy for retirement. Sum of both Senior Engineer and Senior Staff   are accountable for majority of upcoming retirement
  
#### - Finding 2: 
  Only two managers titles are qualified for upcoming retirement and the least position among all.  
  ![Image](https://github.com/jilldvn/Pewlett-Hackard-Analysis/blob/main/graph/retiring_title.png)

#### - Finding 3:
  The following table summarize how many current employees are qualified as being a mentor for next tier of employees who fill in the vacant position after retirement.
  Result shows there are 1549 employees are currently eligible for mentorship program.
  ![Image](https://github.com/jilldvn/Pewlett-Hackard-Analysis/blob/main/graph/mentorship_eligibilty.png)

#### - Finding 4:
  Comparing both graphs of retirement titles for all and retirement unique titles, it is found many employess were having postion changin within employement period.
  In another word, this company offers variety of opportunity for employees to shift their career. 
  
  Total titles counts with duplicated employees (position change): 133776 total titles
  ![Image](https://github.com/jilldvn/Pewlett-Hackard-Analysis/blob/main/graph/retirement_titles.png)
  
  Unique titles counts with last position employees hold: 12458 unique titles (employees)
  ![Image](https://github.com/jilldvn/Pewlett-Hackard-Analysis/blob/main/graph/unique_titles.png)
  
  
### Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
 #### - How many roles will need to be filled as the "silver tsunami" begins to make an impact?
 ![Image](https://github.com/jilldvn/Pewlett-Hackard-Analysis/blob/main/graph/total_emp_to_retire.png)
 
 As shown on above table, there are total 72458 employees to be retired at the time silver tsunami impacts.  
 
 #### - Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
 ![Image](https://github.com/jilldvn/Pewlett-Hackard-Analysis/blob/main/graph/mentor_vs_emp.png)
 
 Above table tells us employees will remain in current position after impact of "silver tsunami" with counts of employees qualified for mentorship by titles.
 Comapring to the columns of remain_counts and counts_mentor, for example, in terms of Senior Engineer, 529 mentors for 60023 remaining employees means that 1 mentor 
 would need to lead more than 100 senior engineers could be challenging as senior engineers' job duties could be more complicated. In conclusion, the table shows us 
 the counts of mentor employees may not be sufficient depending on the complexity of work nature. 
 
