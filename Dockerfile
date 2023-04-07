# FROM ubuntu

FROM python:3.8
ENV PYTHONUNBUFFERED=1
WORKDIR /scanning_app

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


COPY . .
# EXPOSE 8000
CMD python manage.py runserver --insecure --noreload 0.0.0.0:8000