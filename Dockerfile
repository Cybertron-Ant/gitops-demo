FROM python:2.7-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL maintainer="WebMagic Informatica <info@webmagicinformatica.com>" \
      version="1.0"

# set the FLASK_APP environment variable
ENV FLASK_APP=your_app_name.py

CMD flask run --host=0.0.0.0 --port=5000
