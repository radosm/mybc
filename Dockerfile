FROM ubuntu
MAINTAINER "Martin Rados"
RUN apt-get update && apt-get install -y bc socat
COPY run.sh /
COPY runbc.sh /
COPY readme.txt /
ENV MSG="Bienvenide ! no encontrará nada útil aquí"
ENTRYPOINT ["./run.sh"]
EXPOSE 5000
