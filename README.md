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

  Elon Musk, the wealthiest man in the world with 91 M followers on Twitter, published at the beginning of April that he wanted to make the bluebird free.  
  During the whole month of April, Elon Musk was the most exciting trend on Twitter. So we decided to make a sentiment analysis on it to:
  * Have a more profound understanding of the sentiment concerning Elon musk buying Twitter
  * See what the sentiment of the most reactive person ( based on the number of tweets related to the topics) was
  * See what the sentiment of the influencer's account ( more than 500k followers) was
  * See if his announcement on April 29th makes a difference in the general sentiment
  * Or any other relevant information.
  
 ## Webscrapping : 
 
 To get our data, we use:
  * Twitter API: To access Twitter and all pieces of information.
  * Amazon Elastic Computer Cloud (EC2): Which a virtual computer that we used to host our script
  * Amazon Kinesis: To deliver streaming data
  * Amazon S3: To store data
  * Databricks: 
 
![image](https://user-images.githubusercontent.com/100147405/168670368-27e20afc-f039-45c2-b692-64aa9f902d6c.png)

## Cleaning: With Pyspark
* From tweets, we should remove:
  * remove Url
  * remove Symbol of retweet (RT @name): We should keep the text of the retweet because people comment a lot on Elon tweets or any twitter related
  * remove Special caracter
  * remove spaces
  * make lowering
  * make trimming
* We also have to remove all tweets with no values after cleaning
* We need to remove some useless columns such as name, id(id is unique, screen name is unique, but it can be more meaningful),user_location, user_tweet(we get a lot of missing)

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

* The sentiment was overall Neutral (48%), then Positive(38%), and Negative (14%), which was a real surprise for me, who saw a lot of emotional reactions on Twitter.
* The account which reacted the most had a neutral sentiment. So we decided to go forward and found that they were suspended. We can guess that they were bots. That means that we have a lot of Bot on Twitter
* For the account with more than 500k followers, the sentiment was Neutral and Positive. It was primarily daily news like the Times...  
* As excepted, On April 29 th, we got more reactions on the topic. People also used to react between 9 pm to 02 am  


