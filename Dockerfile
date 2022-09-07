#FROM
FROM node:16.14.2
# Create app directory

WORKDIR /usr/src/app


# Just copy the package.json...
COPY . ./

# so we can cache this layer:
RUN npm install

COPY . .

EXPOSE 3000

# command to run on container start
CMD [ "npm", "start" ]