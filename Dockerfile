FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install --assume-yes systemd

RUN rm -rf /lib/systemd/system/* /etc/systemd/system/*

COPY default.target /lib/systemd/system/

COPY halt.target /lib/systemd/system/

COPY halt.service /lib/systemd/system/

COPY systemd-journald.socket /lib/systemd/system/

COPY systemd-journald.service /lib/systemd/system/

COPY sysinit.target /lib/systemd/system/

COPY sleep.service /lib/systemd/system/

COPY fail-start.service /lib/systemd/system/

COPY a.service /lib/systemd/system/

COPY b.service /lib/systemd/system/

CMD ["/lib/systemd/systemd"]
