FROM nodered/node-red-docker:slim
Maintainer andre@jeanmaire.nl

USER root
RUN apk add --no-cache openssl python2 py-pip nano

RUN npm install -g --unsafe-perm node-red-dashboard
RUN npm install -g --unsafe-perm node-red-contrib-opcua
RUN npm install -g --unsafe-perm simpletime
RUN npm install -g --unsafe-perm bcryptjs
RUN npm install -g node-red-admin

RUN npm uninstall -g node-red-pi

RUN pip install --upgrade pip
RUN pip install pyro
RUN mkdir /opc

COPY opc/* /opc/
