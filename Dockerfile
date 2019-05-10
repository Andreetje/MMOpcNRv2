FROM nodered/node-red-docker:slim
Maintainer andre@jeanmaire.nl

USER root

RUN apk add --no-cache python2 py-pip
RUN pip install --upgrade pip
RUN pip install pyro
RUN mkdir opc

COPY opc/* opc/
