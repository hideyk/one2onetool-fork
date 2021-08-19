FROM node:16

# Setting working directory.
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN npm install

# Copying source files
COPY . .

# Test application
RUN npm run test

# Running the app 
CMD [ "npm", "start" ]
