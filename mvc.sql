--Q1)Which bprpugh has highest crash percentage?

SELECT Borough,
       ROUND(COUNT(*)* 100.0/ SUM(COUNT(*)) OVER(),1) AS Crash_percentage
FROM MVC.CRASH.CRASHES
 WHERE Borough is not NULL
 GROUP BY Borough
 ORDER BY 2 DESC;

---Q2) What time of the day had the most crashes? (Evening/Night)

 SELECT
   CASE 
    WHEN TO_TIME(Crash_time) BETWEEN TO_TIME('6:00') AND TO_TIME('18:00') THEN 'Day_Time'
     ELSE 'Night_Time'
     END AS Crash_Time,
     COUNT(*) AS Crash_Number
 FROM MVC.CRASH.CRASHES
  GROUP BY all
  ORDER BY 2 DESC;

  --Q3) Find the number of person injured and killed in each borough.
  
 --A) Number of person injured
 SELECT Borough, SUM(TO_NUMBER(Number_of_persons_injured)) AS Person_injured
 FROM MVC.CRASH.CRASHES
 WHERE Borough is not NULL
 GROUP BY all
 ORDER BY 2 DESC;

 --B) Number of person killed.
 SELECT Borough, SUM(TO_NUMBER(Number_of_persons_killed)) AS Persons_killed
 FROM MVC.CRASH.CRASHES
  WHERE Borough is not NULL
  GROUP BY all
  ORDER BY 2 DESC;
  --Q4) Find the number of crashes per year?
 SELECT YEAR(TO_DATE(Crash_date))AS Crash_year, COUNT(*) AS Crash_Count
  FROM MVC.CRASH.CRASHES
  GROUP BY all
  ORDER BY 2 DESC;

---Q5) What is the number of cyclist injured and killed in each borough?
--A. Cyclist injured in each borough
SELECT Borough, SUM(TO_NUMBER(NUMBER_OF_cyclist_injured)) AS Cyclist_injured
FROM MVC.CRASH.CRASHES
WHERE Borough is not NULL
GROUP BY all
ORDER BY 2 DESC;

--B. Cyclist killed in each borough.
SELECT Borough, SUM(TO_NUMBER(Number_of_cyclist_killed))AS Cyclist_killed
FROM MVC.CRASH.CRASHES
WHERE Borough is not NULL
GROUP BY all
ORDER BY 2 DESC;

--Q6) Find the number of person, pedestrians, motorist, cyclist killed in each borough.Change varchar to number and get the total number of injured person vs borough

 SELECT Borough, SUM(TO_NUMBER(Number_of_persons_killed)) AS person_killed, SUM(TO_NUMBER(Number_of_Pedestrians_killed)) AS Pedestrians_killed, SUM(TO_NUMBER(NUER_OF_MOTORIST_KILLED)) AS Motorist_Killed, SUM(TO_NUMBER(Number_of_cyclist_killed)) AS Cyclist_killed
 FROM MVC.CRASH.CRASHES
 WHERE Borough is not NULL
 GROUP BY all
 ORDER BY 2 DESC;


changed this line

current_date()

current_timestamp()

count()

234456