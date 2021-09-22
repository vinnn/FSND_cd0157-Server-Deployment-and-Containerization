#FROM debian:jesse-slim

#FROM python:3.7.2-slim
FROM python:stretch

COPY . /app
WORKDIR /app


RUN pip3 install -r requirements.txt

EXPOSE 8080

#ENTRYPOINT ["python", "main.py"]
#ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]

