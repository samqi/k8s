FROM gcr.io/bitnami-containers/minideb-extras:jessie-r14

MAINTAINER Sam Ng <samng.qi@gmail.com>

COPY app-code/http-sample /app/http-sample

USER bitnami

WORKDIR /app

EXPOSE 3000

ENTRYPOINT ["/app/http-sample"]

