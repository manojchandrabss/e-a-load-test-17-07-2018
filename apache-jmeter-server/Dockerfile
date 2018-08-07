#This Dockerfile builds Apache JMeter Master Executable based on ajeetraina/apache-jmeter-base

FROM 614055586702.dkr.ecr.us-east-1.amazonaws.com/ea_help_loadtesting/basejmeter:v3.3.3
MAINTAINER MANOJ BHAMIDIPATI<mbhamidipati@ea.com>
# Ports required for JMeter Slaves/Server
EXPOSE 1099 50000
# Application to be executed to start the JMeter container
ENTRYPOINT /jmeter/apache-jmeter-3.3/bin/jmeter-server \
                        -Dserver.rmi.localport=50000 \
                        -Dserver.rmi.ssl.disable=true \
                        -Dserver_port=1099
