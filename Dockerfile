FROM ubuntu:20.04

COPY . /app

WORKDIR /app

RUN apt-get update && apt-get install python3-pip

RUN pip3 install -r requirements.txt

CMD ["python3", "app.py"]