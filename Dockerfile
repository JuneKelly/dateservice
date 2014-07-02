FROM debian:jessie

MAINTAINER Shane Kilkelly <shane@kilkelly.me>

EXPOSE 3000

RUN mkdir /app

ADD dateservice /app/
ADD start.sh /app/

RUN chmod +x /app/start.sh
RUN chmod +x /app/dateservice

CMD ["/app/start.sh"]
