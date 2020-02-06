# set the base image
FROM node:alpine
# set working directory
WORKDIR /app
# copy package.json and yarn.lock
# package.json to install the packages from
# and yarn.lock hot reloading
COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock
# add the container's node_modules folder to docker's $PATH
# so that it can find and watch it's dependencies
ENV PATH /app/node_modules/.bin:$PATH
# install and cache dependencies inside docker
RUN yarn
# start the container
CMD ["yarn", "start"]
