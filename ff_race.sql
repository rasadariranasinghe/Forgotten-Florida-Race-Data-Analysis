DROP TABLE IF EXISTS CLEAND_FF_RACE

CREATE TABLE CLEAND_FF_RACE (
    Place INT,
    First VARCHAR(20),
    Last VARCHAR(20),
    City VARCHAR(30),
    State VARCHAR(5),
    Age INT,
    Gender VARCHAR(5),
    Time INTERVAL,  
    FullName VARCHAR(30),  
    Totalminutes FLOAT,  
    Latitude FLOAT,
    Longitude FLOAT,
    Coordinates TEXT 
);

SELECT *
FROM CLEAND_FF_RACE;

--How many states were represented?

SELECT count(DISTINCT state) as Distinct_state
FROM CLEAND_FF_RACE;

--Average time of mn and women

SELECT Gender, AVG(Totalminutes) as Average_Time
FROM CLEAND_FF_RACE
GROUP BY Gender;

--What were the youngest and oldest ages in the race

SELECT Gender, MAX(Age) as Eldest, MIN(Age) AS Youngest
FROM CLEAND_FF_RACE
GROUP BY Gender;

--what was the average time for each age group

WITH age_buckets AS (
  SELECT Totalminutes,
    CASE 
      WHEN Age < 30 THEN '20-29'
      WHEN Age < 40 THEN '30-39'
      WHEN Age < 50 THEN '40-49'
      WHEN Age < 60 THEN '50-59'
      ELSE '60+' 
    END AS Age_group
  FROM CLEAND_FF_RACE
)

SELECT Age_group,AVG(Totalminutes) AS avg_totalminutes
FROM age_buckets
GROUP BY Age_group
ORDER BY Age_group;

--Top 3 males and females

(
  SELECT fullname, gender, totalminutes
  FROM CLEAND_FF_RACE
  WHERE gender = 'M'
  ORDER BY totalminutes DESC
  LIMIT 3
)
UNION ALL
(
  SELECT fullname,gender, totalminutes
  FROM CLEAND_FF_RACE
  WHERE gender = 'F'
  ORDER BY totalminutes DESC
  LIMIT 3
);

CREATE VIEW Final_ff AS
SELECT FullName,Place,Time,Totalminutes, City,State,Age,Gender ,Coordinates
FROM CLEAND_FF_RACE;

SELECT *
FROM Final_ff;


