FROM ubuntu:kinetic

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ="Europe/Berlin"

RUN apt-get update && apt-get install wget -y && \
    apt-get clean && \
    mkdir -p /opt/psiphond-client && \
    cd /opt/psiphond-client/ && \
    wget https://github.com/Psiphon-Labs/psiphon-tunnel-core-binaries/raw/master/linux/psiphon-tunnel-core-x86_64 && \
    chmod 755 /opt/psiphond-client/psiphon-tunnel-core-x86_64

COPY client.conf /opt/psiphond-client/

RUN echo './psiphon-tunnel-core-x86_64 -config client.conf' > /opt/psiphond-client/run.sh && \
    chmod 755 /opt/psiphond-client/run.sh

WORKDIR  opt/psiphond-client/
CMD [ "./run.sh" ]