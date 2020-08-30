# docker-hello
Container-based python web server to display a simple message

Building the container image

docker build -t docker-hello .

Tag the image and push it to the registry

docker tag docker-hello:latest quay.io/tprinz/docker-hello:latest
docker push quay.io/tprinz/docker-hello

Running the container image

docker run -d -p 8080:8080 --env NAME="happy world" quay.io/tprinz/docker-hello:latest

Connecting to the container image

curl http://localhost:8080
