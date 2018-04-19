# Start from the basic nodedjs image at this specific version
FROM node:8.9.4-alpine

WORKDIR /usr/src/app

# Copy our dependency lists
COPY package*.json ./

RUN yarn install

# Copy all your stuff to the image
COPY . .

EXPOSE 8888

CMD ["yarn", "start"]
