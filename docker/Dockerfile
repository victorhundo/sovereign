FROM debian:latest

ARG USER_ID
ARG GROUP_ID

RUN apt-get update && apt-get install -y \
  git \
  python \
  build-essential \
  curl \
&& rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash meteor  && \
    usermod -u $USER_ID meteor    && \
    groupmod -g $GROUP_ID meteor

USER meteor
WORKDIR /app

ARG UNAME=Linux
RUN curl https://install.meteor.com/ > /tmp/meteor.sh &&\
    chmod +x /tmp/meteor.sh &&\
    /bin/bash /tmp/meteor.sh

ENV PATH="/home/meteor/.meteor:${PATH}"

EXPOSE 3000
COPY ./entrypoint.sh /
CMD [ "/bin/bash", "/entrypoint.sh"]
