# Use the official Node.js image.
FROM node:18-slim

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependencies and install them.
COPY package*.json ./
RUN npm install --production

# Copy local code to the container.
COPY . .

# Expose the port the app runs on.
EXPOSE 8080

# Run the application.
CMD ["node", "index.js"]
