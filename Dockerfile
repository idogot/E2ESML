FROM ubuntu:22.04
MAINTAINER iadogot
RUN apt-get update -y
COPY . /opt/gsom_e2esmp
WORKDIR /opt/gsom_e2esmp
RUN apt install -y python3-pip
RUN pip3 install -r requirements.txt
CMD python3 app.py
