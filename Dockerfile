FROM squidfunk/mkdocs-material:8.2.9 

RUN pip install mkdocs-material

RUN apk update
RUN apk add bash inotify-tools

# CMD start.sh

RUN apk update && apk add bash nodejs npm

# Create app directory
# WORKDIR /usr/src/app

COPY ./ ./

RUN ls -al
RUN pwd

RUN npm -g i serve

RUN mkdocs build

ENTRYPOINT []


# RUN npm i
# RUN yarn build
