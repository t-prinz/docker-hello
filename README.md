# docker-hello
Container-based python web server to display a simple message

Building the container image

docker build -t docker-hello .

Running the container image

docker run -d -p 8080:80 --env NAME="happy world" hello

Connecting to the container image

curl http://localhost:8080
