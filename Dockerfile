# base image
FROM node:20-alpine

# app dir
WORKDIR /app

# copy only needed files first (for caching)
COPY package*.json ./

# install deps
RUN npm install --only=production

# copy rest of app
COPY . .

# app will listen on 3000
EXPOSE 3000

# start command
CMD ["npm", "start"]
