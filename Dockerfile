# Use the official Node.js 18 image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Compile the TypeScript code into JavaScript
RUN npm run build

# Specify the command to run when the container starts 
# npm run dev
CMD [ "npm", "run", "dev" ]
