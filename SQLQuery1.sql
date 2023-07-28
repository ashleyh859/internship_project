/*

Cleaning Data in SQL Queries

*/

SELECT *
FROM [PORTFOLIO PROJECT] ..Data$;

--------------------------------------------------------------------------------------------------------------------------

--Delete columns with confidential information: Student Name, Emails, and Phone Numbers


ALTER TABLE [PORTFOLIO PROJECT] ..Data$
DROP COLUMN [Student Name];


ALTER TABLE [PORTFOLIO PROJECT] ..Data$
DROP COLUMN Email;


ALTER TABLE [PORTFOLIO PROJECT] ..Data$
DROP COLUMN [Cell phone number];


-----------------------------------------------------------------------------------------------------------------------------------------------------

--Breaking out [Type of college (select all)] into One Column (Private/Public) ; Year (2 yr vs 4 yr) and SUNY/CUNY are not needed for my dataset


SELECT [Type of college (select all)]
FROM [PORTFOLIO PROJECT] ..Data$;


SELECT
PARSENAME(REPLACE([Type of college (select all)], ',', '.') , 3) AS SplitPublicPrivate
FROM [PORTFOLIO PROJECT]..Data$
ORDER by SplitPublicPrivate DESC;



ALTER TABLE [PORTFOLIO PROJECT] ..Data$
ADD SplitPrivatePublic Nvarchar(255);


--------------------------------------------------------------------------------------------------------------------------

--Make [Cumulative GPA] clear that it is out of an unweighted 4.0. Change all missing values to N/A.


SELECT
  CONCAT([Cumulative GPA], '/4.0') as [Fixed Cumulative GPA]
FROM [PORTFOLIO PROJECT] ..Data$;


ALTER TABLE [PORTFOLIO PROJECT] ..Data$
ADD [Fixed Cumulative GPA] Nvarchar(255);


UPDATE [PORTFOLIO PROJECT] ..Data$
SET [Fixed Cumulative GPA] = CONCAT([Cumulative GPA], '/4.0');


ALTER TABLE [PORTFOLIO PROJECT] ..Data$
DROP COLUMN [Cumulative GPA];


UPDATE [PORTFOLIO PROJECT] ..Data$
SET [Fixed Cumulative GPA] = REPLACE([Fixed Cumulative GPA], '/4.0', 'N/A')
WHERE [Fixed Cumulative GPA] = '/4.0';


--------------------------------------------------------------------------------------------------------------------------

--Make a column to simplify the 6 categories (Success Inactive, Past Participant, Success, Re-engagement, Alumni, & Access) in [Program] into Active vs Inactive Participants


ALTER TABLE [PORTFOLIO PROJECT] ..Data$
ADD Active_OR_Inactive Nvarchar(255);


UPDATE [PORTFOLIO PROJECT] ..Data$
SET Active_OR_Inactive = 
		CASE
			WHEN Program = 'Past Participant' OR Program = 'Success Inactive' THEN 'Inactive Participants'
			ELSE 'Active Participants'
		END
	WHERE Program IS NOT NULL;


--------------------------------------------------------------------------------------------------------------------------

--Make a column that tells if a student is a transfer.


ALTER TABLE [PORTFOLIO PROJECT] ..Data$
ADD [TransferStatus] Nvarchar(255);


UPDATE [PORTFOLIO PROJECT] ..Data$
SET TransferStatus = 
    CASE
        WHEN Colleges IS NULL THEN NULL
        WHEN Colleges LIKE '%,%' THEN 'Yes'
        ELSE 'No'
    END;


--------------------------------------------------------------------------------------------------------------------------

--Handling Missing Values:


UPDATE [PORTFOLIO PROJECT] ..Data$
SET [Major 2] = CASE WHEN [Major 2] IS NULL THEN 'undecided' ELSE [Major 2] END;


UPDATE [PORTFOLIO PROJECT] ..Data$
SET [Major 1] = CASE WHEN [Major 1] IS NULL THEN 'undecided' ELSE [Major 1] END;


UPDATE [PORTFOLIO PROJECT] ..Data$
SET [Minor 1] = CASE WHEN [Minor 1] IS NULL THEN 'undecided' ELSE [Minor 1] END;


UPDATE [PORTFOLIO PROJECT] ..Data$
SET [Type of college (select all)] = CASE WHEN [Type of college (select all)] IS NULL THEN 'N/A or Missing' ELSE [Type of college (select all)] END;


--------------------------------------------------------------------------------------------------------------------------
/*

Data Exploration

*/

--------------------------------------------------------------------------------------------------------------------------

-- Categorizes and shows the count of different types (Access, Re-engagement, Alumni, Success, Success Inactive, Past Participant) of students as Active and Inactive Participants  , excluding NULL values.

SELECT 
    Program,
    COUNT(*) AS Total_Members,
    CASE 
        WHEN Program = 'Past Participant' OR Program = 'Success Inactive' THEN 'Inactive Participants'
        ELSE 'Active Participants'
    END AS Active_Or_Inactive,
    SUM(CASE WHEN Program = 'Past Participant' OR Program = 'Success Inactive' THEN 0 ELSE 1 END) AS Total_Active,
    SUM(CASE WHEN Program = 'Past Participant' OR Program = 'Success Inactive' THEN 1 ELSE 0 END) AS Total_Inactive
FROM [PORTFOLIO PROJECT]..Data$
WHERE Program IS NOT NULL
GROUP BY Active_Or_Inactive, Program
ORDER BY Active_Or_Inactive ASC;

--------------------------------------------------------------------------------------------------------------------------

-- Show the distribution of the counts of active and inactive students in each college.

SELECT
    Colleges,
	COUNT(*) AS Total_Students,
    SUM(CASE WHEN Active_Or_Inactive = 'Active Participants' THEN 1 ELSE 0 END) AS Active_Students,
    SUM(CASE WHEN Active_Or_Inactive = 'Inactive Participants' THEN 1 ELSE 0 END) AS Inactive_Students
FROM [PORTFOLIO PROJECT]..Data$
WHERE Active_Or_Inactive IN ('Active Participants', 'Inactive Participants')
    AND Colleges IS NOT NULL
	AND TransferStatus = 'No'
GROUP BY Colleges;

------------------------

-- Shows the level of Engagement (Low, Medium, or High) based on Grade Level

SELECT [Student Type], 
       COUNT(*) AS Total_Students,
       SUM(CASE WHEN [Engagement Level?] = 'Low' THEN 1 ELSE 0 END) AS Low_Engagement,
       SUM(CASE WHEN [Engagement Level?] = 'Medium' THEN 1 ELSE 0 END) AS Medium_Engagement,
       SUM(CASE WHEN [Engagement Level?] = 'High' THEN 1 ELSE 0 END) AS High_Engagement
FROM [PORTFOLIO PROJECT]..Data$
WHERE [Student Type] IS NOT NULL AND [Engagement Level?] IS NOT NULL
GROUP BY [Student Type];

-------------------------------------------------------------

-- Shows the Impact of Success Orientation Attendance Contributes to Students' Engagement Level


SELECT 
    [Attended Success orientation?],
    COUNT(*) AS Total_Students,
    SUM(CASE WHEN [ACTIVE_OR_Inactive] = 'Active Participants' THEN 1 ELSE 0 END) AS Active_Students,
    SUM(CASE WHEN [ACTIVE_OR_Inactive] = 'Inactive Participants' THEN 1 ELSE 0 END) AS Inactive_Students
FROM [PORTFOLIO PROJECT]..Data$
WHERE [Attended Success orientation?] IS NOT NULL AND [ACTIVE_OR_Inactive] IS NOT NULL
GROUP BY [Attended Success orientation?]
ORDER BY [Attended Success orientation?];       


-----------

-- Explores the Influence of financial gap on student's engagement level?

SELECT 
    [Gap amount (annual)],
    COUNT(*) AS Total_Students,
    SUM(CASE WHEN [ACTIVE_OR_Inactive] = 'Active Participants' THEN 1 ELSE 0 END) AS Active_Students,
    SUM(CASE WHEN [ACTIVE_OR_Inactive] = 'Inactive Participants' THEN 1 ELSE 0 END) AS Inactive_Students
FROM [PORTFOLIO PROJECT]..Data$
WHERE [Gap amount (annual)] IS NOT NULL AND [ACTIVE_OR_Inactive] IS NOT NULL
GROUP BY [Gap amount (annual)]
ORDER BY [Gap amount (annual)];   


