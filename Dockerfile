FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1
RUN pip3 install django==3.1.1

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
