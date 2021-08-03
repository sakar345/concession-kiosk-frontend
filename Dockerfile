FROM node:14
WORKDIR /usr/src/app
COPY /package*.json /usr/src/app/
RUN npm install
COPY ./concession-kiosk-frontend/  /usr/src/app/
EXPOSE 8080
ENTRYPOINT ["./bin/www"]
CMD [ "node" ]
