FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip3 install -r requirements.txt

#Retrieves stored secret 
ENV RUNTIME_SECRET_KEY $SECRET_KEY
RUN echo SECRET_KEY=$RUNTIME_SECRET_KEY > jokwa/.env

EXPOSE 80
ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:80"]