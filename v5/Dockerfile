FROM node:latest

RUN npm install -g bower grunt-cli && \
    echo '{ "allow_root": true }' > /root/.bowerrc

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

WORKDIR /home/node

RUN git clone --depth=1 --single-branch --branch master https://github.com/thomaspark/bootswatch.git

RUN mkdir -p /home/node/bootswatch

COPY dist bootswatch/dist
RUN cd bootswatch && npm config set cache /tmp && \
	#npm config set user 0 && \
	npm install 

VOLUME /home/node/bootswatch/kth

COPY Gruntfile.js bootswatch
RUN cd bootswatch && grunt swatch:kth

CMD ["/bin/bash"]
