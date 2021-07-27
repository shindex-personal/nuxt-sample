FROM node:14.17.3

WORKDIR /usr/src/

ENV HOST 0.0.0.0 \
    TZ Asia/Tokyo

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000
CMD [ "npm", "run", "dev" ]