FROM node:alpine

RUN npm install -g bower grunt-cli && \
    echo '{ "allow_root": true }' > /root/.bowerrc

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN \
  apk add --update git curl && \
  rm -rf /var/cache/apk/*

WORKDIR /data

RUN git clone --single-branch --branch v3 https://github.com/thomaspark/bootswatch.git

RUN mkdir -p /data/bootswatch/kth
COPY kth bootswatch/kth
COPY Gruntfile.js bootswatch

RUN cd bootswatch && npm install && grunt swatch:kth && cp -r assets kth && cp -r bower_components kth

VOLUME /data/bootswatch/kth

CMD ["/bin/ash"]
