# Use the RHEL 8 UBI minimal base image
FROM registry.access.redhat.com/ubi8/ubi-minimal

# Install python3
RUN microdnf install python3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python3", "app.py"]
