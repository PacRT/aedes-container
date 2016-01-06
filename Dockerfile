# Get node image
FROM node:4.2.3

# Docker Maintainer
MAINTAINER sandeep

# install aedes mqtt broker
RUN npm install aedes --save

# use default mqtt broker port
EXPOSE 1883

# start the server
ENTRYPOINT ["node", "node_modules/aedes/example.js"]
