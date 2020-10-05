FROM ubuntu:18.04

RUN apt-get update && apt-get -y install curl python3 python3-pip

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

HEALTHCHECK CMD curl --fail http://localhost:5000/ || exit 1

CMD ["python3", "app.py", "&"]