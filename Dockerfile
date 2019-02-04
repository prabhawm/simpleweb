# Specify a base image
From node:alpine
WORKDIR /usr/app

# install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./
#Default command
CMD ["npm", "start"]