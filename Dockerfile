# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app
# Copy package.
RUN npm install express
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose the port your application will run on (if different from your app.js)
EXPOSE 3000

# Define the command to start your application
CMD [ "node", "app.js" ]

