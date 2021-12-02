FROM python:3.6-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

ADD . /app

# install dependencies
RUN pip install --upgrade pip 
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000"]
