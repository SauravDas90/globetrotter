#use the latest LTS, can use alias as well in Heroku

FROM node:8

# Create app directory on docker image

WORKDIR /usr/src/

# Install app dependencies, just copy package*.json, it means copying package.json and package-lock.json
# a wildcard ensures that both package.json files are copied 
# where available npm(5+)

COPY package*.json /usr/src/

RUN npm install

# If building the code for production, use the below command
# RUN npm install --only=production

# Bundle app source, it copies the entire source code files into docker image

COPY /usr/bin .

# Expose the port no on which the node app will run 
# docker daemon will map that port no the port on which docker runs
# uses EXPOSE command for it

EXPOSE 3100

# this command will run the node app in docker image
CMD ["npm","start"] 

#create a .dockerignore file to ignore the files
#This will prevent your local modules and debug logs from being copied onto your Docker image and possibly overwriting modules installed #within your image.












#cmd [npm , start]
