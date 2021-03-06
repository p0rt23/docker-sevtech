FROM alpine

ENV ZIPFILE="server.zip"
ENV WORKING="opt/sevtech"
WORKDIR /${WORKING}

RUN apk update && apk add openjdk8

COPY ./${ZIPFILE} /var/${WORKING}/

RUN unzip /var/${WORKING}/${ZIPFILE} -d /${WORKING} &&\
    rm -rf /var/${WORKING} &&\
    chmod +x /${WORKING}/*.sh &&\
    /${WORKING}/Install.sh

COPY ./sevtech/* /${WORKING}/

EXPOSE 25565
VOLUME ["./world", "./backups"]
ENTRYPOINT ["./ServerStart.sh"]
