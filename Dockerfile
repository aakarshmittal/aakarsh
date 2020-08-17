# Use an official Python runtime as a parent image
FROM gcc:8.2

# Set the working directory to /app
WORKDIR /aak

# Copy the current directory contents into the container at /app
COPY . /aak

# Install any needed packages specified in requirements.txt
RUN gcc hello.c -o hello
EXPOSE 5672

# Run app.py when the container launches
CMD ["./hello"]

