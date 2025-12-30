FROM node:20-alpine

WORKDIR /app
COPY . .

RUN npm i -g serve

# Cloud Run は $PORT(通常8080) で待ち受ける必要がある
CMD ["sh", "-c", "serve -s . -l ${PORT:-8080}"]
