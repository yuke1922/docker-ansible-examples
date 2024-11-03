FROM python:3.12-slim

RUN apt-get update && apt-get install sshpass vim -y

COPY . /local
WORKDIR /local

RUN pip install -r requirements.txt
#RUN ansible-galaxy collection install -r requirements.yml