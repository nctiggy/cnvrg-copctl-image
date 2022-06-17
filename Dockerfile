FROM alpine:3

LABEL io.cnvrg.vendor="cnvrg.io"
LABEL io.cnvrg.image.authors="craig.smith@cnvrg.io"

ARG FILE_URL
ADD --chmod=555 ${FILE_URL} /usr/local/bin/copctl

ENTRYPOINT ["copctl"]
