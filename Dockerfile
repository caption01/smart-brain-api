FROM node:current-buster

WORKDIR /usr/src/smart-branin-api

COPY ./ ./

RUN npm install

CMD ["/bin/bash"]