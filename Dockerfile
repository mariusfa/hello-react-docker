FROM node:14 AS builder

WORKDIR /app



COPY package.json ./
COPY package-lock.json ./
RUN npm install 

COPY . ./
RUN npm run build


FROM node:14-alpine

WORKDIR /app

COPY startProd.sh ./
COPY --from=builder /app/build ./build
RUN npm install -g serve


CMD ["./startProd.sh"]

