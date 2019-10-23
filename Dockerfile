FROM alpine:3.10

RUN set -x \
    && apk update \
    && apk --no-cache add findutils

VOLUME [ "/out" ]

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
