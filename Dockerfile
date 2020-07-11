FROM alpine:3.10

RUN set -x \
    && apk update \
    && apk --no-cache add findutils

VOLUME [ "/out" ]

ENV UID=1000
ENV GID=1000
ENV CRON_SCHEDULE="* * * * *"

COPY root/ /

ENTRYPOINT [ "/entrypoint.sh" ]
