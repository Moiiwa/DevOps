FROM python:3.9-alpine

WORKDIR /app_python

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

# install dependencies
COPY requirements.txt /app_python/requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt


# copy project
COPY src ./src
COPY static ./static
COPY templates ./templates
COPY db.sqlite3 .
COPY manage.py .
CMD python manage.py runserver 0.0.0.0:8000