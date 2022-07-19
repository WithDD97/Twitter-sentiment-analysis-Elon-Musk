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

  Elon Musk, the wealthiest man in the world with 91M followers on Twitter, announced that he wants to take Twitter private and make the bluebird free from investors' control. 

Throughout April, Elon Musk was trending on Twitter but there was no indication whether the twitter users found acquisition news positive or negative. Hence, I decided to complete sentiment analysis on all tweets with hashtag #ElonMusk. This will help to:

* Have a better understanding of the sentiment concerning Elon musk buying Twitter.
* Understand the sentiment of the most active user (with the most tweets on this topic).
* Understand the sentiment of influencers (more than 500k followers).
* Decipher if his announcement about acquisition changed his popularity on Twitter.

  
 ## Data Collection : 
 
 To get relevant data, I used:
  * Twitter API: To access Twitter and all pieces of information.
  * Amazon Elastic Computer Cloud (EC2): Which a virtual computer that we used to host our script
  * Amazon Kinesis: To deliver streaming data
  * Amazon S3: To store data
 
![image](https://user-images.githubusercontent.com/100147405/168670368-27e20afc-f039-45c2-b692-64aa9f902d6c.png)

## Data Cleaning: With Pyspark

* From tweets, we should remove:
* removed Url,spaces and special characters from tweets.
* removed retweet symbols (RT @name) to isolate content of the tweet: We should keep the text of the retweet because people comment a lot on Elon tweets or any twitter related
* removed some useless columns such as name, id(id is unique, screen name is unique, but it can be more meaningful),user_location, user_tweet(we get a lot of missing)

## Machine Learning: 

* Completed sentiment analysis using Textblob (https://textblob.readthedocs.io/en/dev/).
* Used Pyspark to populate predictions.
* Used tokenizer to remove stop words.
* Used TF-IDF vectorization to count different words used.
* Used Linear Regression with 97.97% score.


![image](https://user-images.githubusercontent.com/100147405/168660792-492be21a-510c-4ec9-be3a-abadc450ac5e.png)

Data Analysis and Visualizations:
* Used AWS Athena to run SQL queries on data.
* Used Quicksight to make visualizations. 

Findings:
* 48% of the twitters had neutral sentiment, followed by positive (38%) and negative (14%). It was a real surprise for me as I see a lot of emotional reactions on Twitter. Neutral sentiment would mean that about half of the tweets were intended to share information rather than reacting to it.
* The most active user on this topic had a neutral sentiment towards the announcement. Further analysis showed that the account was suspended. I am assuming that it was a bot account.
* Influencer accounts had a mixed response with both neutral and positive sentiment. Some of these accounts were daily news channels like Times which explains their neutral stance.
* As expected, he did become popular on Twitter as a result of this announcement. 
* Most tweets about this topic were posted between 9pm and 2am EST.  
  


