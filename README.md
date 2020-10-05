# docker-flask
Basic docker container for flask with health monitoring

Following along with [tutorial](https://howchoo.com/devops/how-to-add-a-health-check-to-your-docker-container).

## Usage
```
git clone https://github.com/InterruptSpeed/docker-flask
cd docker-flask
sudo docker build -t docker-flask .
```

to run container as daemon:
```
sudo docker run -d --name docker-flask -p 5000:5000 docker-flask
```

or as swarm:
```
sudo docker stack deploy --compose-file docker-compose.yml flask
```

to check health:

```
sudo docker inspect --format='{{json .State.Health}}' docker-flask
```
