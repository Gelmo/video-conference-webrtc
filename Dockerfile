FROM node:4-onbuild

RUN apk add --no-cache --update git
RUN cd ~
RUN git clone https://github.com/Gelmo/video-conference-webrtc.git
RUN cd video-conference-webrtc
RUN npm install
RUN node server.js

EXPOSE 1337