/* MAKING A VIEW to
	- Have the hour
	- Have the Days
	- Change the number sentiment(0,1,2) to ('Neutral','Positive','Negative')
	- Tweets which was related to "elonmusk", "elon" and "musk" */

CREATE OR REPLACE VIEW "update1" AS 
SELECT
  screen_name
, tweet
, followers_count
, "substr"(predictions.created_at, 12, 2) Hours
, "substr"(predictions.created_at, 9, 2) Days
, (CASE WHEN (prediction = 0) THEN 'Neutral' 
	WHEN (prediction = 1) THEN 'Positive' 
	WHEN (prediction = 2) THEN 'Negative' END) sentiment
FROM
  predictions
WHERE (((tweet LIKE '%elonmusk%') OR 	
		(tweet LIKE '% elon %')) OR 
		(tweet LIKE '% musk %'))

--- From the previous view, select the account which has more than 500k followers:

CREATE OR REPLACE VIEW "most influencers" AS 
SELECT *
FROM
  update1
WHERE (followers_count > 500000)
ORDER BY followers_count DESC

--- How many time an acoount made a tweet ?

select screen_name,
        count(screen_name) as numberOftweet
from update1 
group by screen_name
order by numberOftweet desc;
 
--- Looking for the tweets

select*
from update1
where screen_name = 'Colleen67845442';