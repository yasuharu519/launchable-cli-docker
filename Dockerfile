FROM openjdk:8-jre-slim

COPY --from=python:3.12-slim / /

RUN apt update -y && apt install -y git
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
