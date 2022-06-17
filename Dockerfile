FROM alpine:3

LABEL io.cnvrg.vendor="cnvrg.io"
LABEL io.cnvrg.image.authors="craig.smith@cnvrg.io"

ARG FILE_URL
RUN apk add --no-cache curl && \
    curl -SL ${FILE_URL} && \
    mv ./$(echo ${FILE_URL} | grep -oP '[^/\n]+$' /usr/local/bin/copctl && \
    chmod 555 /usr/local/bin/copctl && \
    apk del curl

ENTRYPOINT ["copctl"]
