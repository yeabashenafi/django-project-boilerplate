# base image
FROM python:3.9-slim

# maintainer
LABEL Author="Author Name"

# The environment variable ensures that the python 
# output to the terminal without buffering it first
ENV PYTHONUNBUFFERED 1

# switch to the app directory so that everything runs from here
WORKDIR /app
COPY requirements.txt /app/requirements.txt

# installs the requirements
RUN pip install -r requirements.txt
COPY . /app

# command to run the project
# CMD python manage.py makemigrations
CMD python manage.py runserver 0.0.0.0:40755
