# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package*.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV PASSWORD=your_password
ENV HASHED_PASSWORD=your_hashed_password

# Run app.js when the container launches
CMD ["node", "app.js"]
