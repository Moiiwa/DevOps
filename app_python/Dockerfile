FROM python:3.9-alpine

WORKDIR /app_python

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# install dependencies
COPY requirements.txt /app_python/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


# copy project
COPY src ./src
COPY static ./static
COPY templates ./templates
COPY db.sqlite3 .
COPY manage.py .
EXPOSE 8000/tcp
EXPOSE 8000/udp
CMD python manage.py runserver 0.0.0.0:8000