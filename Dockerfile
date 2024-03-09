# Use the node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# Set working directory
WORKDIR /src

# Copy all source files 
COPY . .

# Run npm install command to install node.js packages
RUN npm install

#Expose ports.
EXPOSE 8080
EXPOSE 443

# Set the default execution command to node src/index.js
CMD ["node", "src/index.js"]
