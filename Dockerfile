FROM codercom/code-server:latest

# Update package lists with retry mechanism and proper setup
RUN apt-get update -y || (apt-get clean && apt-get update -y) && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    git \
    curl \
    wget \
    nodejs \
    npm

# Set up workspace directory
WORKDIR /home/coder/project

# Expose the port
EXPOSE 8080

# Start code-server
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "."]
