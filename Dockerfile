FROM ubuntu

RUN at-get update -y
RUN apt-get -y install python python3-pip
RUN pip3 install flask

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run --host=0.0.0.0
