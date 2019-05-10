FROM nodered/node-red-docker:slim
Maintainer andre@jeanmaire.nl

USER root

RUN npm install -g --unsafe-perm node-red-dashboard
RUN npm install -g --unsafe-perm node-red-contrib-opcua
RUN npm install -g --unsafe-perm simpletime

RUN npm uninstall -g node-red-pi
RUN apk add --no-cache openssl python2 py-pip
RUN pip install --upgrade pip
RUN pip install pyro
RUN mkdir opc

COPY opc/* opc/
