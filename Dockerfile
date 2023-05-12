FROM node:17 

# Creating  app directory
WORKDIR /usr/src/app
#Copy the json file
COPY *.json ./
#INSTALL MODULES
RUN  npm install

#COPY source files
COPY . .
#Build
RUN npm  run build

EXPOSE 8080
CMD [ "node", "server.js" ]