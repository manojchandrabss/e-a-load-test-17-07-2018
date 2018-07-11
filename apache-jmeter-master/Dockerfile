#This Dockerfile builds Apache JMeter Master Executable based on ajeetraina/apache-jmeter-base
FROM 614055586702.dkr.ecr.us-east-1.amazonaws.com/ea_help_loadtesting/basejmeter:v4.0.8 
MAINTAINER MANOJ BHAMIDIPATI<mbhamidipati@ea.com>


RUN apt-get install -y python
RUN apt-get install -y python-pip python-dev build-essential python-tk libxml2-dev libxslt-dev zlib1g-dev
RUN pip install --upgrade pip
RUN pip install lxml
RUN pip install psutil
RUN pip install bzt
#RUN bzt
#Port 60000 required for JMeter Master
EXPOSE 60000

