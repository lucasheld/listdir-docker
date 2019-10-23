FROM alpine:3.10

RUN set -x \
    && apk update \
    && apk --no-cache add findutils

VOLUME [ "/out" ]

# folders to scan separated by semicolon
ENV FOLDERS=""

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
