

FROM node:16-alpine


WORKDIR /ChangeMoi


COPY . .


RUN npm install


COPY . .

#FROM docker.io/nodejscn/node:latest
FROM  DefiniMoiIci

WORKDIR 

COPY --from=builder  /node-apps  .

EXPOSE 4000


CMD npm start