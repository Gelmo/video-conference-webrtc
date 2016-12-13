FROM mhart/alpine-node:6

WORKDIR /src
ADD . .

RUN apk add --no-cache make gcc g++ python git
WORKDIR /root
RUN git clone https://github.com/Gelmo/video-conference-webrtc.git
WORKDIR /root/video-conference-webrtc
RUN npm install

EXPOSE 3000 31335
CMD ["node", "server.js"]