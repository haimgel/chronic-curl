FROM alpine:3.15

ENV UID=1000
ENV GID=1000

RUN \
    adduser -u ${UID} -g ${GID} app -D \
    && apk add --no-cache supercronic curl

COPY --chmod=755 *.sh /
USER ${UID}:${GID}

ENTRYPOINT ["/start.sh"]
CMD [""]
