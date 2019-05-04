FROM openjdk:8-jre

RUN curl https://serposcope.serphacker.com/download/LATEST/`curl -Lso- https://serposcope.serphacker.com/download/LATEST/ | grep "\.deb" | sed  's/.* href="\([^"]*\)".*$/\1/'` -o /tmp/serposcope.deb
RUN dpkg --force-confold -i /tmp/serposcope.deb
RUN rm /tmp/serposcope.deb

VOLUME /var/lib/serposcope/
EXPOSE 7134

COPY serposcope /etc/default/serposcope
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
