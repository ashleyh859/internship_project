![Excel Dashboard](https://github.com/ashleyh859/internship_project/assets/138391564/53b1fdfc-708e-4dc1-96d0-c36fe11a64a5)# 🎓 Data Analytics Project for Educational Empowerment: Uncovering Engagement Patterns at a Nonprofit 💡

## 🎯👋 Introduction and Project Objective

This was the first data analytics project that I've ever created after learning some SQL, Excel, and Tableau skills. While working as an Administrative Assistant and a Marketing/Public Relations intern since last summer and during the school year and even as a participant in this program myself, I wanted to create a project that could seek potential patterns of student engagement levels in this Program which could provide valuable insights to improving the program services. The primary focus is to understand how different factors such as colleges, grade levels, and more correlate with student engagement. 

This nonprofit organization empowers low-income and/or first-generation students, who face significant challenges in accessing higher-level education, with resources and support to succeed in receiving their secondary degrees. It provides opportunities like one-on-one counseling, assistance with financial aid, and more throughout their journey. This program starts with the Access Program, which helps students apply to secondary education, and then to the Success Program, which supports students during their college time. 

## ❓📋Project Questions

1. What proportion do the categories in the program take up between Active and Inactive Participants?
  
2. Is there a correlation between grade levels and the level of engagement in our support programs?
  
3. How does the proportion of Active and Inactive Participants change among different colleges?
   
4. Does attendance at the Success Orientation positively impact students' ongoing engagement?
  
5. Does a student's financial gap influence the student's engagement level?

## Key Skills Used 🛠️
### 🧹🔍Data Cleaning with Microsoft SQL 🔍

[SQL Code] (https://github.com/ashleyh859/SQLquery.git)

| Skill Name  | Description |
| ------------- | ------------- |
|Data Manipulation Language (DML)|Utilized UPDATE statements to modify existing data and set missing values to specific default values when creating new columns.|
|Data Definition Language (DDL)|Used ALTER TABLE and DROP COLUMN statements to add and drop columns, removing confidential information and unnecessary columns.|
|Data Cleaning and Transformation|Used SQL functions like REPLACE, PARSENAME, and CONCAT to reformat and extract existing data to standardize GPA values and classify college types into distinct categories (Public/Private).|
|Conditional Logic and Data Filtering|Utilized CASE statements to categorize data and filter rows based on specific conditions, such as identifying transfer status and distinguishing active and inactive participants.

### 🔍📊 Data Exploration

[SQL Code] (https://github.com/ashleyh859/SQLquery.git)

| Skill Name  | Description |
| ------------- | ------------- |
|Data Manipulation Language (DML)|Utilized SQL functions such as COUNT, SUM, and CASE to categorize students as active or inactive participants based on their program type.|
|Data Cleaning and Transformation|Used CASE statements to categorize students into distinct engagement levels|
|Conditional Logic and Data Filtering|Filtered data based on program participation, engagement levels, attendance at Success Orientation, and financial gap

### 📊📈 Excel (Pivot Table) Visualizations

[Excel Visual] (https://github.com/ashleyh859/excelvisual.git)

![Image](![Excel Dashboard](https://github.com/ashleyh859/internship_project/assets/138391564/128cf7d2-9060-400d-896a-c016ac00e3e9)


| Diagram Name  | Quick Observations + Analysis |
| ------------- | ------------- |
| 1. Proportion of Program Categories among Active and Inactive Participants  | The analysis reveals the distribution of program categories among active and inactive participants. Notably, the majority of students fall under the "Success Inactive" and "Past Participant" categories, constituting 905 and 217 individuals, respectively. On the other hand, "Access," "Re-engagement," "Alumni," and "Success" programs consist entirely of active participants, with 209, 100, 427, and 481 students, respectively. This indicates a higher level of engagement among students enrolled in these programs, which could signify the success of these initiatives in fostering ongoing participation. Remarkably, the total count of active participants (1,217) is nearly on par with the number of inactive participants (1,122) across all program categories. This suggests that there are almost the same proportion of students who are actively engaged and those who aren't.  |
| 2. Levels of Engagement Based on Grade Level  | Across all grade levels, a total of 50 students exhibit "Low Engagement." The majority of students, a total of 75, display "Medium Engagement" across various grade levels. Among the students, a total of 17 are characterized by "High Engagement." Majority of the proportion of students fall under both "Medium Engagement" and "Low Engagement" categories, and even for each grade level, it is clear that these students also are part of "Medium and Low Engagement".   |
| 3. Distribution of Active and Inactive Participants Across Different Colleges| The analysis reveals the distribution of active and inactive participants across various colleges. It is evident that participation varies significantly among colleges. Some colleges have a higher percentage of active participants, while others have a higher percentage of inactive participants. Several colleges stand out with a majority of active participants, indicating a higher level of engagement. For instance, Babson College, Barnard College, Brown University, Dartmouth College, Harvard University, and Yale University have 100% active participants. Conversely, some colleges show a higher percentage of inactive participants, suggesting challenges in maintaining engagement levels. Notable examples include CUNY Borough of Manhattan Community College, CUNY Bronx Community College, and CUNY LaGuardia Community College. |

### Tableau for Data Visualization Dashboards 📊
[Tableau Dashboard] (https://public.tableau.com/app/profile/ashley.huang1806/viz/UncoveringEngagementPatternsataNonprofit/Dashboard1?publish=yes)

| Diagram Name  | Quick Observations + Analysis |
| ------------- | ------------- |
| 4. Impact of Success Orientation Attendance on Engagement Levels  |Out of the 235 students who attended the Success Orientation, a substantial majority (213 students) are classified as active participants. This demonstrates that attending the Success Orientation has a strong positive correlation with higher engagement levels, so the nonprofit should focus on improving to make the Orientation more engaging.|
| 5. Influence of Financial Gap on Student Engagement Level| Notably, students with smaller financial gaps (e.g., "Under $1000", "$1001-$3000", "$3001-$6000") and higher financial gaps ("Over $10000") tend to have a higher proportion of active participants. The medium ranges are proportionally equal. Overall, Students with smaller financial gaps tend to have higher engagement rates, while students with larger gaps may face challenges in actively participating.|



