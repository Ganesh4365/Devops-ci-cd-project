# Use Node base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json first to leverage caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# Expose app port
EXPOSE 3000

# Run app
CMD ["npm", "start"]
