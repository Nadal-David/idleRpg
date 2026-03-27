FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install -g @angular/cli

COPY . .

EXPOSE 4200

# CMD ["npm", "run", "start", "--", "--host", "0.0.0.0"]
CMD ["npm","run","start","--","--host", "0.0.0.0","--ssl","--ssl-cert", "/app/certs/localhost.pem","--ssl-key", "/app/certs/localhost-key.pem"]