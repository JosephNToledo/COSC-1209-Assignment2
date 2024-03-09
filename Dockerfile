# 1. Use the node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# 2. Set the environment variable NODE_ENV to production
ENV NODE_ENV=production

# 3./3.b Create a new directory named labone (WORKDIR creates the directory if it doesn't exist 
# and sets the new folder as the working directory)
WORKDIR /labtwo

# 3.a Change the ownership to the node user and node group
RUN chown -R node:node .

# 4. Set the user to node
USER node 

# 5. Copy all source files and change the file ownership to the node user and node group
COPY --chown=node:node . /labtwo

# 6. Run npm install command to install node.js packages
RUN npm install

# 7. Expose port 3000
EXPOSE 3000

# 8. Set the default execution command to node src/index.js
CMD ["node", "src/index.js"]
