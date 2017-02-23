FROM s0fx2/alpine:3.5

MAINTAINER s0fx2 <9288171@qq.com>

RUN apk update && \
	apk --no-cache upgrade && \
	apk add aria2

RUN mkdir /download && \
	mkdir /root/aria2 && \
	touch /root/aria2/aria2.session

ADD conf/aria2.conf /root/aria2/aria2.conf

VOLUME /download

EXPOSE 6800

CMD aria2c --conf-path /root/aria2/aria2.conf
