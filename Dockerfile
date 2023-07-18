# Use a base Python image
FROM python:3.9

# Copy the Python script and log file into the container
COPY dummy_logs.py .
COPY ./promtail/dummy.log .

# Set the working directory inside the container
WORKDIR /app

EXPOSE 8080

# Set the command to run your Python program
CMD [ "python", "dummy_logs.py" ]
