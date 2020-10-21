select *
From recent_grads
limit 3

select Major,ShareWomen
From recent_grads

select Major,ShareWomen
FROM recent_grads
where ShareWomen<0.5

SELECT Major
  FROM recent_grads
 WHERE Major_category = 'Engineering'
   AND ShareWomen > 0.5;

SELECT Major,Median,Unemployed
FROM recent_grads
WHERE Median>=20
OR Men>Women
LIMIT 20

SELECT Major,Major_category,ShareWomen,Unemployment_rate
FROM recent_grads
WHERE(Major_category='Engineering')
AND (Unemployment_rate<0.051 OR ShareWomen>0.5)

SELECT Major,ShareWomen,Unemployment_rate
FROM recent_grads
WHERE ShareWomen>0.3
AND Unemployment_rate<0.1
ORDER by ShareWomen DESC