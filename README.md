# Twitter-sentiment-analysis-Elon-Musk

#### Libraries:

* Pyspark
* TextBlob

#### Big Data tools

* Aws S3
* Aws EC2
* Kinesis
* Athena 
* Quicksight

## Objective:

  Elon Musk, the richest man of the world with 91 M of followers on twitter publish on the begining of April that he  wnat to make the blue bird free. And he bought it at 44 B$ on 29th April. 
  During the whole month of April, Elon Musk was the most interesting trends on twitter. So we decided to make a sentiment analysis on it to:
  * Have a deeper understanding on the sentiment concerning Elon musk buying twitter
  * See what was the sentiment of the most reactive person ( based on the number of tweets related to the topics)
  * See what was the sentiment of the influencers account ( more than 500k followers)
  * See if the fact that he bought twitter on 29th April, makes a difference in the general sentiment
  * Or any others relevant informations.
 
 ## Webscrapping : 
 
 To get our datas, we use:
  * Twitter APi: To have access to twitter and all informations.
  * Amazon Elastic Computer Cloud (EC2): Which a virtual computer that we used to host our script
  * Amazon Kinesis: To deliver streaming data
  * Amazon S3: To store data
  * Databricks: 
 
![image](https://user-images.githubusercontent.com/100147405/168670368-27e20afc-f039-45c2-b692-64aa9f902d6c.png)

## Cleaning: With Pyspark
* From tweets, we should remove:
  * remove Url
  * remove Symbol of retweet (RT @name) : We should keep the the text of the retweet because people conmment a lot Elon tweet's or any twitter related
  * remove Special caracter
  * remove spaces
  * make lowering
  * make trimming
* We also have to remove all tweets with no values after cleaning
* We need to remove some useless columns such as name, id(id is unique, screen name is unique but it can be more meaningfull),user_location, user_tweet(we get a lot of missing)

## Get sentiment: TextBlob
Use the the python library called textblob
https://textblob.readthedocs.io/en/dev/


## Machine Learning: Getting the predictions - Pyspark

* Features transformation:Tokenizer
* Features transformation: Remove Stop words
* Features transformation: Count Vectorizer
* Features transformation: TF-IDF Vectorization
* Labeling
* Linear Regression
* Scoring: 97.97%

![image](https://user-images.githubusercontent.com/100147405/168660792-492be21a-510c-4ec9-be3a-abadc450ac5e.png)

## Athena: 

We run some sql queries on Athena to get differents views on our predictions 

## Quicksight:

We use quicksight to make visualizations present in the .pptx files. 

## Findings: 

* The sentiment was overall Neutral (48%) then Positive(38%) and Negative (14%). Which was a real surprise for me who saw a lot of emotionals reactions on twitter.
* The account which react the most was having a neutral sentiment. So we decided to go forward and we found that they account was suspended. We can can guess that they was bots. That means that we have a lot of Bot on twitter
* For the account which get more than 500k followers, the sentiment was Neutral and Positive. It was mostly dialy news like the Times...  
* As excepted, after Elon Made his payment we get a more reaction on the topic. People also used to react between 9 pm to 02 am 


