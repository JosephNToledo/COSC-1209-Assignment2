# Use the node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# Set environment variable NODE_ENV with a value of production.
ENV NODE_ENV=production

# Create a new directory named labone (WORKDIR creates the directory if it doesn't exist 
# and sets the new folder as the working directory)
WORKDIR /labtwo

# Change Ownership to the node user and node group.
RUN chown -R node:node .

# Set the user to node.
USER node

# Copy all source files 
COPY --chown=node:node . /labtwo

# Run npm install command to install node.js packages
RUN npm install

#Expose ports.
EXPOSE 8080
EXPOSE 443

# Set the default execution command to node src/index.js
CMD ["node", "src/index.js"]
