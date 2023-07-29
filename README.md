# 🎓 Data Analytics Project for Educational Empowerment: Uncovering Engagement Patterns at a Nonprofit 💡

## 🎯👋 Introduction and Project Objective

This was the *first* data analytics project that I've ever created after learning some *SQL*, *Excel*, and *Tableau* skills. 

While working as an Administrative Assistant and a Marketing/Public Relations intern since last summer, during the school year, and even as a participant in the program in this non-profit organization myself, **I wanted to create a project that could seek _potential patterns_ of student engagement levels.**

### 🧭🎯 Goal
- The primary focus is to understand how **different factors** such as colleges, grade levels, and more *correlate* with **student engagement**, which provides valuable insights into improving the organization's programs.

### 🌟🚀 Mission of this Organization
It wants to empower low-income and/or first-generation students, who face significant challenges in accessing higher-level education, with *resources and support* to succeed in receiving their *secondary degrees*. It provides *opportunities* like one-on-one counseling, assistance with financial aid, and more throughout their journey. This program starts with the **Access** Program, which helps students **apply** to secondary education, and then to the **Success** Program, which **supports** students during their college time. 

## 📚 Table of Contents
- [Project Questions](#project-questions)
- [Key skills Used](#key-skills-used-%EF%B8%8F)
- [Data Cleaning with Microsoft SQL](#data-cleaning-with-microsoft-sql-)
- [Data Exploration](#-data-exploration)
- [Excel Pivot Table Visualizations](#-excel-pivot-table-visualizations)
- [Tableau for Data Visualization Dashboards](#-tableau-for-data-visualization-dashboards-)
- [Conclusion](#-conclusion)
- [Findings](#-findings)
- [Recommendations](#-recommendations)

## ❓📋Project Questions

1. What proportion do the *categories* in the program take up between Active and Inactive Participants?
  
2. Is there a correlation between *grade levels* and the level of engagement in our support programs?
  
3. How does the proportion of Active and Inactive Participants change among different *colleges*?
   
4. Does attendance at the *Success Orientation* positively impact students' ongoing engagement?
  
5. Does a student's *financial gap* influence the student's engagement level?

# Key Skills Used 🛠️
## 🧹🔍Data Cleaning with Microsoft SQL 🔍

### [SQL Code] (https://github.com/ashleyh859/SQLquery.git)

| Skill Name  | Description |
| ------------- | ------------- |
|**Data Manipulation Language (DML)**|Utilized ``UPDATE`` statements to modify existing data and set missing values to specific default values when creating new columns.|
|**Data Definition Language (DDL)**|Used ``ALTER TABLE`` and ``DROP COLUMN`` statements to add and drop columns, removing confidential information and unnecessary columns.|
|**Data Cleaning and Transformation**|Used SQL functions like ``REPLACE``, ``PARSENAME``, and ``CONCAT`` to reformat and extract existing data to standardize GPA values and classify college types into distinct categories (Public/Private).|
|**Conditional Logic and Data Filtering**|Utilized ``CASE`` statements to categorize data and filter rows based on specific conditions, such as identifying transfer status and distinguishing active and inactive participants.

## 🔍📊 Data Exploration

### [SQL Code](https://github.com/ashleyh859/SQLquery.git)


| Skill Name  | Description |
| ------------- | ------------- |
|**Data Manipulation Language (DML)**|Utilized SQL functions such as ``COUNT``, ``SUM``, and ``CASE`` to categorize students as active or inactive participants based on their program type.|
|**Data Cleaning and Transformation**|Used ``CASE`` statements to categorize students into distinct engagement levels|
|**Conditional Logic and Data Filtering**|Filtered data based on program participation, engagement levels, attendance at Success Orientation, and financial gap

## 📊📈 Excel (Pivot Table) Visualizations

**[Excel Visual]**(https://github.com/ashleyh859/excelvisual.git)

**![Excel Dashboard]**(https://github.com/ashleyh859/internship_project/assets/138391564/53b1fdfc-708e-4dc1-96d0-c36fe11a64a5)

| Diagram Name  | Quick Observations + Analysis | Recommendations
| ------------- | ------------- |---------------|
| **1. Proportion of Program Categories among Active and Inactive Participants**  | The analysis reveals the *distribution* of program categories among active and inactive participants. Notably, the *majority* of students fall under the "Success Inactive" and "Past Participant" categories and "Access," "Re-engagement," "Alumni," and "Success" programs consist entirely of active participants. Remarkably, the total count of active participants (1,217) is *nearly on par* with the number of inactive participants (1,122) across all program categories. This suggests that there are almost the *same* proportion of students who are actively engaged and those who aren't. |Consider *implementing* targeted interventions like follow-up surveys and personalized outreach to *re-engage disengaged students*. This will help identify reasons for their disengagement and devise appropriate improvement strategies.|
| **2. Levels of Engagement Based on Grade Level**  | Across all grade levels, a total of 50 students exhibit "Low Engagement." The majority of students, a total of 75, display "Medium Engagement" across various grade levels. Among the students, a total of 17 are characterized by "High Engagement." *Majority* of the proportion of students fall under both "Medium Engagement" and "Low Engagement" categories, and even for *each grade level*, it is clear that these students also are part of "Medium and Low Engagement".   |To implement more programs and foster higher engagement levels among specific grade levels, they should tailor and create *specific programs* to meet each *grade's needs*: orientation for freshmen, and career workshops for seniors.| 
| **3. Distribution of Active and Inactive Participants Across Different Colleges**| The analysis reveals the distribution of active and inactive participants across various colleges. It is evident that participation *varies significantly* among colleges. Some colleges have a higher percentage of active participants, while others have a higher percentage of inactive participants. Several colleges stand out with a majority of active participants, indicating a higher level of engagement. For instance, Babson College, Barnard College, Brown University, Dartmouth College, Harvard University, and Yale University have 100% active participants. Conversely, some colleges show a higher percentage of inactive participants, suggesting challenges in maintaining engagement levels such as CUNY Borough of Manhattan Community College, CUNY Bronx Community College, and CUNY LaGuardia Community College. |Conducting a comprehensive *survey* such as overall college experiences and support services can be helpful in gaining valuable insights.|

## 📊💻 Tableau for Data Visualization Dashboards 📊
**[Tableau Dashboard]**(https://public.tableau.com/app/profile/ashley.huang1806/viz/UncoveringEngagementPatternsataNonprofit/Dashboard1?publish=yes)

**![Dashboard 1]**(https://github.com/ashleyh859/internship_project/assets/138391564/a151eaa6-5979-4f5e-87f3-129bbfc58c29)

| Diagram Name  | Quick Observations + Analysis | Recommendations
| ------------- | ------------- |---|
| 4. **Impact of Success Orientation Attendance on Engagement Levels**  |Out of the 235 students who attended the Success Orientation, a substantial *majority* (213 students) are classified as active participants. This demonstrates that attending the Success Orientation has a *strong positive correlation* with higher engagement levels, so the nonprofit should focus on improving to make the Orientation more engaging.| The organization should focus on *promoting* Success Orientation and encouraging *maximum* student participation. Furthermore, they can also perhaps make this multiple days and leave a lasting impression.|
| 5. **Influence of Financial Gap on Student Engagement Level**| Notably, students with smaller financial gaps (e.g., "Under $1000", "$1001-$3000", "$3001-$6000") and higher financial gaps ("Over $10000") tend to have a *higher proportion* of active participants. The medium ranges are proportionally equal. Overall, Students with smaller financial gaps tend to have higher engagement rates, while students with larger gaps may face challenges in actively participating.| The organization should *prioritize* financial assistance and support for students in these categories through scholarships, grants, or stipends, and make sure that students are *aware* of these opportunities.|

# 💫🌟 Conclusion

## 🔍🔬 Findings
- **Proportion of Program Categories**: The proportion of active participants in "Access," "Re-engagement," "Alumni," and "Success" programs are *almost equal* to the inactive participants in "Success Inactive" and "Past Participant".

- **Correlation Between Grade Levels and Engagement**: The *majority* of students have *low or medium engagement* in the Success Program.

- **Distribution Across Colleges**: There are *variations* in engagement among different colleges.

- **Impact of Success Orientation Attendance**: Students who attended Success Orientation show *higher engagement levels*.

- **Influence of Financial Gap**: Students with smaller and larger financial gaps tend to have *higher active participation*, while medium gap ranges show *proportional engagement*.

## 📈🚀 Recommendations
-  *Tailor* support programs to specific grade levels
-  *Conduct* student surveys to *identify* patterns influencing engagement among colleges and Inactive Participants
-  *Explore* further the impact of Success Orientation and financial gap on engagement to drive positive changes in the program.
