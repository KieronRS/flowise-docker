FROM node:18-alpine

RUN apk add --no-cache git python3 py3-pip make g++ build-base \
    cairo-dev pango-dev chromium

RUN npm install -g flowise

RUN mkdir -p /root/.flowise && chmod -R 777 /root/.flowise

WORKDIR /data

EXPOSE 3000

CMD ["npx", "flowise", "start"]
