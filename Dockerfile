FROM codercom/code-server:latest

# Install additional tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    nodejs \
    npm

# Set up workspace directory
WORKDIR /home/coder/project
VOLUME /home/coder/project

# Expose the port
EXPOSE 8080

# Start code-server
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "."]
