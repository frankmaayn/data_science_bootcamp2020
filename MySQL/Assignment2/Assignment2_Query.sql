USE assignment2;

/*************Show all information for each project*********/
SELECT DISTINCT *
FROM PROJECT;

/*************What are the ProjectID, ProjectName, 
StartDate, and EndDate values of projects in the PROJECT table? ******/

SELECT DISTINCT ProjectID, ProjectName, StartDate, EndDate
FROM PROJECT;

/***********What projects in the PROJECT table started 
before August 1, 2017?  Show all the information for each project. *****/

SELECT *
FROM PROJECT
WHERE StartDate < '2017-08-01';

/***********What projects in the PROJECT table
 have not been completed?  Show all the information for each project. ****/
 
 SELECT *
 FROM PROJECT
 WHERE EndDate IS NULL;