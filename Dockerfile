#source image; may be really old
FROM python:stretch

COPY . /app
#set app directory
WORKDIR /app

#install pip and requirements.txt
RUN pip install --upgrade pip
#RUN apt-get install python3-pip <errored>
RUN pip install pyjwt
RUN pip install flask
RUN pip install gunicorn
RUN pip install pytest

#run main app using Gunicorn WSGI server
ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]
