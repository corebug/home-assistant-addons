FROM alpine

ARG BUILD_ARCH
ARG BUILD_VERSION

LABEL maintainer "Vitalii Turovets <corebug@corebug.net"
LABEL io.hass.version="3.16-r0"
LABEL io.hass.type="addon"
LABEL io.hass.arch="amd64"

ENV LANG C.UTF-8
ENV IPERF3_VERSION "3.16-r0"

## Install iperf3
RUN apk update
RUN apk upgrade
RUN apk add --no-cache iperf3=${IPERF3_VERSION} jq
RUN adduser -DH iperf iperf

# Copy the run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
