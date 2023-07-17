# Use a base Python image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script and log file into the container
COPY dummy_logs.py .
COPY dummy.log .

# Set the command to run your Python program
CMD [ "python", "dummy_logs.py" ]
