#source image; may be really old
FROM python:stretch

COPY . /app
#set app directory
WORKDIR /app

#install pip and requirements.txt
RUN pip3 install --upgrade pip3
RUN pip3 install -r requirements.txt

#run main app using Gunicorn WSGI server
ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]
