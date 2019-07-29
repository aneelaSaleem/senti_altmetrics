FROM python:3.5.3
MAINTAINER Aneela Saleem "aneela.saleem@itu.edu.pk"

WORKDIR /app/

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000
 
ENTRYPOINT python ./sentialtmetrics.py
