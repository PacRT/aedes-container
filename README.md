# Introduction
1. Introduction
Assumes you have a local system with docker running on it. Check wiki for more details.

The Dockerfile will build on ready made container based on Ubuntu 14.04 and node 4.2.4 from Dockerhub. Only Aedes specific entries are added to extend the ready made container.

2. To run the aedes embedded server in a container

Create a directory in your local system.

_Eg: mkdir mqttbroker_

Download the Dockerfile to this new directory

Run the following commands after downloading.

To build the aedes broker docker image: **docker build -t mqttbroker .**
To run the aedes docker image: **docker run -p 50000:1883 -d mqttbroker**
To check docker images list : **docker images**
To check status of the container: **docker ps -a**
To check the logs: **docker logs**
If no issues, the logs should show _server listening on port 1883_
To check the status and stats of the haproxy, from a browser: http://<ip-address of the host running container>:1936/
