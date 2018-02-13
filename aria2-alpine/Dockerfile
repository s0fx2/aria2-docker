FROM alpine:latest

MAINTAINER S0FX2

RUN apk update && \
	apk --no-cache upgrade && \
	apk add --no-cache aria2

RUN mkdir /root/aria2 && \
	mkdir /root/downloads

ADD conf/aria2.conf /root/aria2/aria2.conf
ADD conf/run.sh /root/run.sh

RUN chmod +x /root/run.sh

VOLUME /root/aria2/
VOLUME /root/downloads/

EXPOSE 6800

#CMD aria2c --conf-path /root/aria2/aria2.conf
CMD /root/run.sh
