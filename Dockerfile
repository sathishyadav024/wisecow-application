# Use the official Fedora Linux image as the base image
FROM fedora:latest

# Update and Install the Prerequisites
RUN dnf update -y && \
    dnf install -y cowsay netcat && \
    dnf install -y fortune-mod

# Copy the wisecow.sh script into the container
COPY wisecow.sh /wisecow.sh

# Make the wisecow.sh script executable
RUN chmod +x /wisecow.sh

EXPOSE 4499
# Set the entry point to the wisecow.sh script
CMD ["/wisecow.sh"]
