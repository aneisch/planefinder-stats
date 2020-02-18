FROM alpine:latest

RUN apk --update add --no-cache curl bash jq

COPY ./pf_script.sh /usr/local/bin/pf_script.sh
RUN chmod +x /usr/local/bin/pf_script.sh

ENV INFLUX_HOST 10.0.1.22
ENV INFLUX_PORT 8086
ENV INFLUX_DATABASE planefinder

ENV PLANEFINDER_CLIENT 10.0.1.8

ENTRYPOINT ["pf_script.sh"]
