FROM ubuntu:20.04

RUN apt-get update

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD ["python3", "app.py"]