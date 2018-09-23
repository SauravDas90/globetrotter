FROM node:carbon

# Create src directory
WORKDIR /application

# Install application dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

#COPY index.js ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle application source
COPY src /application

EXPOSE 3100
CMD [ "node", "app.js" ]
