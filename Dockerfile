FROM node:4-onbuild

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git
EXPOSE 1337
USER node
RUN cd /home/node/
RUN git clone https://github.com/Gelmo/video-conference-webrtc.git
RUN cd video-conference-webrtc
RUN npm install
CMD node server.js