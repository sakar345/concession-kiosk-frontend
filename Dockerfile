FROM node:14
WORKDIR /usr/src/app
COPY /package*.json /usr/src/app/
RUN npm install
COPY . .
EXPOSE 8080
ENTRYPOINT ["./bin/www"]
CMD [ "node" ]
