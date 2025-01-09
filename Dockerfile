FROM httpd:2.4
WORKDIR /app
COPY ./dist/ /usr/local/apache2/htdocs/

COPY package-lock.json /app
COPY package.json /app
RUN npm install
RUN ts-node index.ts

#ben niet echt mee met node op den ogenblik, mijn excuses.
