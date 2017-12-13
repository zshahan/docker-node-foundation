FROM node:9.2.0-alpine 
ENV JOINTSWP_VERSION 5.0 
RUN apk add --no-cache git RUN apk --no-cache add --virtual native-deps \
  g++ gcc libgcc libstdc++ linux-headers \ 
  make python curl autoconf automake \ 
  file nasm zlib-dev && \ 
  npm install --quiet node-gyp -g && \ 
  npm install --quiet gulp-cli -g && \ 
  npm install --quiet foundation-cli -g && \
  apk del native-deps
