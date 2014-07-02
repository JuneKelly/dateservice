FROM debian:jessie

MAINTAINER Shane Kilkelly <shane@kilkelly.me>

EXPOSE 3000

RUN mkdir /app

ADD dist/dateservice /app/

RUN chmod +x /app/dateservice

CMD ["/app/dateservice"]
