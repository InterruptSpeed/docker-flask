FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install python3 python3-pip

COPY . /app

WORKDIR /app

RUN echo `python3 --version`
RUN pip3 install -r requirements.txt

HEALTHCHECK CMD curl --fail http://localhost:5000/ || exit 1

CMD ["python3", "app.py"]