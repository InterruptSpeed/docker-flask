FROM python:3.9.0-alpine3.12

RUN apk --no-cache add curl

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

HEALTHCHECK CMD curl --fail http://localhost:5000/ || exit 1

#CMD ["python3", "app.py"]
EXPOSE 5000 
ENTRYPOINT [ "python3" ] 
CMD [ "app.py" ]
