# senti_altmetrics
A research work that a) contributes in annotating Altmetrics dataset across five different
disciplines b) perform sentiment analysis using various machine learning and natural
language processing-based algorithms, c) propose which model performs the best and d)
provides a python library for sentiment analysis of Altmetrics dataset chosing the best moedel. At first, we build a set
of guidelines for annotation of the tweets related to scientific literature being discussed on
social media with two human coders that annotate the data with an agreement of 0.86. Then
we run the same set of experiments on two versions of the dataset: one with tweets in English
and the other with tweets in multiple languages. Using a subset of tweets on 300 papers indexed in
Web of Science, we show the effectiveness of employed machine learning and natural
language processing models by comparing with well-known sentiment analysis model i.e.
SentiStrength and Sentiment140, as baseline. We show that Support Vector Machine with
unigram outperforms all other employed classifiers and baseline methods, with an accuracy of
over 85%, followed by Logistic Regression with 83% accuracy and Naïve Bayes with 80%.
The precision, recall and F1 scores for Support Vector Machine, Logistic Regression and
Naïve Bayes were (0.89, 0.86, 0.86), (0.86, 0.83, 0.80) and (0.85, 0.81, 0.76), respectively.

The library is basic flask application for sentiment analysis of Altmetrics dataset using SVM based model. We have also provided it as a docker container that can setup the environment for you to use the API following the instructions below.

# Installation of Docker container (Option 1)
*Prerequisites*

You must have docker installed and running on your system. (See. https://docs.docker.com/docker-for-mac/install/)

Run the following commands to use the container

      * pull latest image
      docker pull mscs16029/sentialtmetrics
  
      * run docker image
      docker run -d -p 5000:5000 mscs16029/sentialtmetrics:latest

# Installation of flask application (Option 2)
    * pip install flask (see how to create Flask app https://flask.palletsprojects.com/en/1.1.x/installation/)
    * export FLASK_APP=sentialtmetrics.py
    * flask run
    
   Running on http://127.0.0.1:5000/ 

# Usage
Access the API endpoint 
 
 http://127.0.0.1:5000/classifyaltmetrics
 
 params: data (JSON array)

Hit the REST API using any http client like *postman*, *curl* or your code written in *java/scala, php, python* etc. 

# Example curl command

curl -H "Content-Type: application/json" -X POST -d '{"data": ["sigh When a science acronym is too distracting to even read the science! LOL http://t.co/p2OFAgnuwv @InvaderXan","you raise test scor even iq test practic test skill you lower test scor chang test", "world best acronym", "ild gudgeon gobio gobio french river contaminat microplastic preliminary study first evidence"]}' http://localhost:5000/classifyaltmetrics
 
# Sample Input
      
    {"data": 
    ["*sigh* When a science acronym is too distracting to even read the science! LOL http://t.co/p2OFAgnuwv @InvaderXan",
     "you raise test scor even iq test practic test skill you lower test scor chang test", 
     "world best acronym", 
     "ild gudgeon gobio gobio french river contaminat microplastic preliminary study first evidence"]}
# Sample Output
 
     [{"text": "*sigh* When a science acronym is too distracting to even read the science! LOL http://t.co/p2OFAgnuwv @InvaderXan", "sentiment": "negative"}, 
     {"text": "you raise test scor even iq test practic test skill you lower test scor chang test", "sentiment": "postive"},
     {"text": "world best acronym", "sentiment": "negative"}, 
     {"text": "ild gudgeon gobio gobio french river contaminat microplastic preliminary study first evidence", "sentiment": "postive"}]
             

