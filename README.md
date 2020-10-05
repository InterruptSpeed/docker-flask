# docker-flask
Basic docker container for flask with health monitoring

Following along with [tutorial](https://howchoo.com/devops/how-to-add-a-health-check-to-your-docker-container).

## Usage
```
git clone https://github.com/InterruptSpeed/docker-flask
cd docker-flask
sudo docker build -t docker-flask .
sudo docker run -d --name docker-flask -p 5000:5000 docker-flask
```