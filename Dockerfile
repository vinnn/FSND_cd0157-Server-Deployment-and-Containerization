#FROM debian:jesse-slim

FROM python:3.7.2-slim
FROM python:stretch

COPY . /mydockerfolder
WORKDIR /mydockerfolder


RUN pip3 install -r requirements.txt

#ENTRYPOINT ["python", "main.py"]
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]


