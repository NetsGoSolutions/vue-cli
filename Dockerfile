
FROM node:15-alpine3.12

RUN npm install -g @vue/cli @vue/cli-service-global

RUN mkdir /code
WORKDIR /code

EXPOSE 8000
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

CMD vue ui -H 0.0.0.0
