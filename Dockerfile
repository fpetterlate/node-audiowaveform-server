FROM ubuntu:18.04
USER root
ENV NODE_ENV=production

WORKDIR /server

RUN apt-get update

#Install audiowaveform
RUN apt-get -y install software-properties-common
RUN echo "deb http://ppa.launchpad.net/chris-needham/ppa/ubuntu bionic main deb-src http://ppa.launchpad.net/chris-needham/ppa/ubuntu bionic main" > /etc/apt/sources.list.d/ppa-launchpad.list
RUN add-apt-repository ppa:chris-needham/ppa
RUN apt-get update
RUN apt-get -y install audiowaveform

#Install nodejs
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x  | bash -
RUN apt-get -y install nodejs

#Cleanup
RUN apt-get -y remove curl gnupg software-properties-common

COPY ./package.json .
COPY ./audiowaveform-server.js .
COPY ./scale-json.py .

RUN npm install
CMD [ "node", "./audiowaveform-server.js" ]