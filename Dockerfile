# Use the node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# Create a new directory named labone (WORKDIR creates the directory if it doesn't exist 
# and sets the new folder as the working directory)
WORKDIR /labtwo

# Copy all source files 
COPY /labtwo

# Run npm install command to install node.js packages
RUN npm install

# Set the default execution command to node src/index.js
CMD ["node", "src/index.js"]