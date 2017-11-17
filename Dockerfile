# Base Image
FROM python:3

# Command to run when the container starts
RUN mkdir -p /usr/src/app

# Copy apps from the local folder to the Docker container
COPY .  /usr/src/app
COPY requirements.txt .

# Commands to run to install dependencies
RUN pip install scipy numpy
RUN pip install -r requirements.txt



# Working directory
WORKDIR /usr/src/app
