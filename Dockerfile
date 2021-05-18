FROM openjdk:8-jre-slim

COPY --from=python:3.9-slim / /

RUN apt update -y && apt install -y git
RUN pip install launchable==1.17.0

