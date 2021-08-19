FROM node:16

# Setting working directory.
WORKDIR /usr/src/app

# Set environment variable for JSON data file
ENV DATA_FILE="Questions-test.json"

# Installing dependencies
COPY package*.json ./
RUN npm ci --silent

# Copying source files
COPY . .

EXPOSE 80 3000

# Running the app 
CMD [ "npm", "start" ]
