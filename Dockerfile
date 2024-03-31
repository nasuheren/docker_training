# Base image
FROM python:latest

# Set the working directory in the container
WORKDIR /docker_training

# Copy the current directory contents into the container at /app
COPY helloWorld.py /docker_training

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "helloWorld.py"]

