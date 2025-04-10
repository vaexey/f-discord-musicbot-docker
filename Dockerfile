FROM ubuntu:latest

ARG MUSICBOT_TOKEN
ARG MUSICBOT_OWNER
ARG MUSICBOT_PREFIX

RUN apt update
RUN apt install -y openjdk-11-jre wget python3 python3-requests

COPY config.txt config.txt
COPY latest_release.py latest_release.py
COPY github.conf github.conf

RUN sed -i 's/##token/'$MUSICBOT_TOKEN'/g' config.txt
RUN sed -i 's/##owner/'$MUSICBOT_OWNER'/g' config.txt
RUN sed -i 's/##prefix/'$MUSICBOT_PREFIX'/g' config.txt

RUN python3 latest_release.py | wget -O JMusicBot.jar -i-

CMD ["java", "-Dnogui=true", "-jar", "JMusicBot.jar"]
