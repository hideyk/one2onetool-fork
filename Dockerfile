FROM node:16

# Setting working directory.
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN npm ci --silent

# Copying source files
COPY . .

EXPOSE 80 3000

# Running the app 
CMD [ "npm", "start" ]
