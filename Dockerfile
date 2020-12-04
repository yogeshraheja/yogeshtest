FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y install python python-pip
RUN pip install flask
COPY app.py /opt/
CMD FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=81
