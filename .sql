SELECT * FROM bright_tv_dataset;

select
viewership.UserID,
surname,
email,
gender,
race,
age,
province,
`Social Media Handle`
from 
viewership
inner join
workspace.default.bright_tv_dataset
on 
viewership.UserID = bright_tv_dataset.UserID
order by
RecordDate2 desc;


select
viewership.UserID,
surname,
email,
gender,
race,
age,
province,
`Social Media Handle`
from 
viewership
left join
workspace.default.bright_tv_dataset
on 
viewership.UserID = bright_tv_dataset.UserID
order by
RecordDate2 desc;

select
viewership.UserID,
surname,
email,
gender,
race,
age,
province,
`Social Media Handle`
from 
viewership
full outer join
workspace.default.bright_tv_dataset
on 
viewership.UserID = bright_tv_dataset.UserID
order by
RecordDate2 desc


--I WAS COUNTING TOTAL VIEWERSHIP
select count (Viewership.UserID) as total 
FROM
viewership
inner join
workspace.default.bright_tv_dataset
on 
viewership.UserID = bright_tv_dataset.UserID
Limit 1000;

SELECT 
date(Viewership.recorddate2) AS view_date,
COUNT(*) AS total_views
FROM Viewership
GROUP BY 
date(Viewership.recorddate2)
ORDER BY view_date;

SELECT * FROM bright_tv_dataset;

SELECT
  viewership.UserID,
  surname,
  email,
  gender,
  race,
  age,
  province,
  `Social Media Handle`
FROM 
  viewership
INNER JOIN
  workspace.default.bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  RecordDate2 DESC;

SELECT
  viewership.UserID,
  surname,
  email,
  gender,
  race,
  age,
  province,
  `Social Media Handle`
FROM 
  viewership
LEFT JOIN
  workspace.default.bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  RecordDate2 DESC;

SELECT
  viewership.UserID,
  surname,
  email,
  gender,
  race,
  age,
  province,
  `Social Media Handle`
FROM 
  viewership
FULL OUTER JOIN
  workspace.default.bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  RecordDate2 DESC;

-- Counting total viewership
SELECT COUNT(viewership.UserID) AS total 
FROM
  viewership
INNER JOIN
  workspace.default.bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
LIMIT 1000;


select
count (Viewership.UserID) as total 
FROM
viewership;


count total viewership

SELECT
  SUM(`Viewership`.`Duration 2`) AS total_duration
FROM
  viewership
LIMIT 1000;

To count viewership by province

-- Display all records from bright_tv_dataset
SELECT * FROM bright_tv_dataset;

-- Inner join to get matching records from both tables
SELECT
  viewership.UserID,
  bright_tv_dataset.Surname,
  bright_tv_dataset.Email,
  bright_tv_dataset.Gender,
  bright_tv_dataset.Race,
  bright_tv_dataset.Age,
  bright_tv_dataset.Province,
  bright_tv_dataset.`Social Media Handle`
FROM 
  viewership
INNER JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  viewership.RecordDate2 DESC;

-- Left join to get all records from viewership and matching records from bright_tv_dataset
SELECT
  viewership.UserID,
  bright_tv_dataset.Surname,
  bright_tv_dataset.Email,
  bright_tv_dataset.Gender,
  bright_tv_dataset.Race,
  bright_tv_dataset.Age,
  bright_tv_dataset.Province,
  bright_tv_dataset.`Social Media Handle`
FROM 
  viewership
LEFT JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  viewership.RecordDate2 DESC;

-- Full outer join to get all records from both tables
SELECT
  viewership.UserID,
  bright_tv_dataset.Surname,
  bright_tv_dataset.Email,
  bright_tv_dataset.Gender,
  bright_tv_dataset.Race,
  bright_tv_dataset.Age,
  bright_tv_dataset.Province,
  bright_tv_dataset.`Social Media Handle`
FROM 
  viewership
FULL OUTER JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  viewership.RecordDate2 DESC;

-- Counting total viewership
SELECT COUNT(viewership.UserID) AS total 
FROM
  viewership
INNER JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID;

-- Counting total views by date
SELECT 
  to_date(viewership.RecordDate2, 'yyyy-MM-dd') AS view_date,
  COUNT(*) AS total_views
FROM viewership
GROUP BY 
  to_date(viewership.RecordDate2, 'yyyy-MM-dd')
ORDER BY view_date;

-- Sum of Duration 2
SELECT
  SUM(viewership.`Duration 2`) AS total_duration
FROM
  viewership;

-- Count viewership by province

SELECT
  bright_tv_dataset.Province,
  COUNT(*) AS viewership_count
FROM
  viewership
INNER JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
GROUP BY
  bright_tv_dataset.Province
ORDER BY
  viewership_count DESC;

---daily viewership by province

-- Display all records from bright_tv_dataset
SELECT * FROM bright_tv_dataset;

-- Inner join to get matching records from both tables
SELECT
  viewership.UserID,
  bright_tv_dataset.Surname,
  bright_tv_dataset.Email,
  bright_tv_dataset.Gender,
  bright_tv_dataset.Race,
  bright_tv_dataset.Age,
  bright_tv_dataset.Province,
  bright_tv_dataset.`Social Media Handle`
FROM 
  viewership
INNER JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  viewership.RecordDate2 DESC;

-- Left join to get all records from viewership and matching records from bright_tv_dataset
SELECT
  viewership.UserID,
  bright_tv_dataset.Surname,
  bright_tv_dataset.Email,
  bright_tv_dataset.Gender,
  bright_tv_dataset.Race,
  bright_tv_dataset.Age,
  bright_tv_dataset.Province,
  bright_tv_dataset.`Social Media Handle`
FROM 
  viewership
LEFT JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  viewership.RecordDate2 DESC;

-- Full outer join to get all records from both tables
SELECT
  viewership.UserID,
  bright_tv_dataset.Surname,
  bright_tv_dataset.Email,
  bright_tv_dataset.Gender,
  bright_tv_dataset.Race,
  bright_tv_dataset.Age,
  bright_tv_dataset.Province,
  bright_tv_dataset.`Social Media Handle`
FROM 
  viewership
FULL OUTER JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
ORDER BY
  viewership.RecordDate2 DESC;

-- Counting total viewership
SELECT COUNT(viewership.UserID) AS total 
FROM
  viewership
INNER JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID;

-- Counting total views by date
SELECT 
  to_date(viewership.RecordDate2, 'yyyy-MM-dd') AS view_date,
  COUNT(*) AS total_views
FROM viewership
GROUP BY 
  to_date(viewership.RecordDate2, 'yyyy-MM-dd')
ORDER BY view_date;

-- Sum of Duration 2
SELECT
  SUM(viewership.`Duration 2`) AS total_duration
FROM
  viewership;

-- Count viewership by province
SELECT
  bright_tv_dataset.Province,
  COUNT(*) AS viewership_count
FROM
  viewership
INNER JOIN
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
GROUP BY
  bright_tv_dataset.Province
ORDER BY
  viewership_count DESC;

  --Total number of user records

SELECT COUNT(UserID) AS total_users
FROM viewership;

---Total number of unique users (distinct users)

SELECT COUNT(DISTINCT UserID) AS unique_users
FROM viewership;


-- Count total viewership
SELECT COUNT(UserID) AS total_viewership
FROM viewership;

-- Count total unique users
SELECT COUNT(DISTINCT UserID) AS total_unique_users
FROM viewership;

-- Count unique users by race

SELECT Race, COUNT(DISTINCT UserID) AS unique_users_count
FROM viewership
GROUP BY Race
ORDER BY unique_users_count DESC;

---Viewership by Gender

SELECT 
  bright_tv_dataset.Gender,
  COUNT(*) AS viewership_count
FROM 
  viewership
INNER JOIN 
  bright_tv_dataset
ON 
  viewership.UserID = bright_tv_dataset.UserID
GROUP BY 
  bright_tv_dataset.Gender;

  ---Age bucket

  SELECT
    CASE
      WHEN Age BETWEEN 18 AND 24 THEN '18-24'
      WHEN Age BETWEEN 25 AND 34 THEN '25-34'
      WHEN Age BETWEEN 35 AND 44 THEN '35-44'
      WHEN Age BETWEEN 45 AND 54 THEN '45-54'
      WHEN Age BETWEEN 55 AND 64 THEN '55-64'
      WHEN Age BETWEEN 65 AND 74 THEN '65-74'
      ELSE '75+'
    END AS age_group
     FROM bright_tv_dataset;
    





















