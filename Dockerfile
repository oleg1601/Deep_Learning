# Pull base image
FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /PycharmProjects/ProjectWebPage

# Install dependencies
COPY Pipfile Pipfile.lock /PycharmProjects/ProjectWebPage/
RUN pip install pipenv && pipenv install --system && pip install django && pip install psycopg2

# Copy project
COPY . /PycharmProjects/ProjectWebPage/