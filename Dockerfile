FROM node:18-alpine

WORKDIR /app

COPY _worker.js ./

RUN npm init -y && \
    npm install @cloudflare/workers-types

CMD ["node", "_worker.js"]
