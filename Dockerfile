#FROM
FROM node:16
# Create app directory
WORKDIR /usr/src/app
COPY . ./
RUN npm install -ci
COPY . .
EXPOSE 3000:3000
CMD [ "npm", "start" ]

