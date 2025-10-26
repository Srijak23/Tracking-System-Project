# base image
FROM node:18-alpine
# set working directory
WORKDIR /app
# copy dependencies in the container
COPY package*.json ./
# Install the dependencies from package json file
RUN npm install
#Copy the source code
COPY . .
#expose port number
EXPOSE 3007
# run the application
CMD [ "npm","start" ]