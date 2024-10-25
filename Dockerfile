# Using Node as the base image with the latest version
FROM node:18-alpine


# Running the app
WORKDIR /app


#Installing and copying the json packages with the apps contents
COPY package*.json ./


#Installing content within the yarn content
COPY yarn.lock ./


#Installing yarn and executing the commands in the container during the build process
RUN yarn install


#Copying all files from the host
COPY . .


#Exposing the application port
EXPOSE 3000


#Specifying the command to run the application
CMD ["yarn", "start"]