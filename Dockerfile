# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

#copy files into wd
ADD . /app

#install any packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# make port 80 available to the world outside the container
EXPOSE 80

#define environment variable
ENV NAME world

#run the application when the container launches.
CMD ["python", "app.py"]
