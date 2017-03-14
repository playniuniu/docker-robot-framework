FROM alpine:latest
MAINTAINER "playniuniu" <playniuniu@gmail.com>

RUN apk add --no-cache --update py-pip firefox-esr-dev xvfb dbus chromium-chromedriver \
    && pip install robotframework robotframework-selenium2library selenium robotframework-xvfb 

VOLUME /test

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
