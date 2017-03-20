FROM ubuntu:latest
MAINTAINER "playniuniu" <playniuniu@gmail.com>

ENV DEBIAN_FRONTEND nointeractive
ENV GECKODRIVER_VER v0.15.0
ENV GECKODRIVER_URL https://github.com/mozilla/geckodriver/releases/download/${GECKODRIVER_VER}/geckodriver-${GECKODRIVER_VER}-linux64.tar.gz

RUN apt-get update -y \
    && apt-get install -y curl python-pip firefox dbus-x11 ttf-wqy-microhei \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
    && cd /usr/local/bin \
    && curl -L ${GECKODRIVER_URL} | tar xz \
    && pip install robotframework robotframework-selenium2library selenium

VOLUME /testcases

CMD ["robot", "/testcases/"]
