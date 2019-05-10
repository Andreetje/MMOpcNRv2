FROM nodered/node-red-docker:slim
Maintainer andre@jeanmaire.nl

USER root

RUN apk add --no-cache python3
RUN pip3 install --upgrade pip
RUN pip3 install pyro4
RUN mkdir opc

COPY opc/* opc/
