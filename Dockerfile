# Stage 1: Build the application
FROM node:18 AS build

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy all files for the build
COPY . .

# Build the application (replace with your build command if applicable)
RUN npm run build

# Stage 2: Production
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy only the built files from the previous stage
COPY --from=build /app .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
