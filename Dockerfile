FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade
RUN apt-get install python3 python3-pip

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD ["python3", "app.py"]