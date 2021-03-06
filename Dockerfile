FROM python:3.6.4-alpine

MAINTAINER Jaro Marval <jaro@tooldata.com.co>
LABEL maintaner="Juan Romero <juan@tooldata.io>"

WORKDIR /app

RUN apk update \
  && apk add --virtual build-deps gcc python3-dev musl-dev \
  && apk add postgresql-dev

RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENV PYTHONUNBUFFERED 1

CMD ["python", "main.py"]
