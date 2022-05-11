FROM squidfunk/mkdocs-material:8.2.9 

RUN pip install mkdocs-material

RUN apk update
RUN apk add bash inotify-tools

# CMD start.sh

RUN apk add bash nodejs npm
RUN apk add nginx

# Create app directory
# WORKDIR /usr/src/app

COPY ./ ./

RUN ls -al
RUN pwd

RUN npm -g i serve http-server

RUN mkdocs build

ENTRYPOINT []


# RUN npm i
# RUN yarn build
