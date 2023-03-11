#FROM node:12.2.0-alpine
#WORKDIR /app
#ENV PATH /app/node_modules/.bin:$PATH
#COPY package.json ./
#COPY package-lock.json ./
#COPY ./ ./
#RUN npm i
#RUN npm install react-scripts@3.0.1 -g
#CMD ["npm", "run", "start"]

FROM node:12.2.0-alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
RUN npm install react-scripts@3.0.1 -g
CMD ["npm", "run", "start"]

#FROM node:alpine
## set working directory
#WORKDIR /app
## add `/app/node_modules/.bin` to $PATH
#ENV PATH /app/node_modules/.bin:$PATH
#
##COPY package.json ./
##COPY package-lock.json ./
#COPY ./client/package*.json ./
#RUN npm i
#
## add app
#COPY . ./
#
## start app
#CMD ["npm", "start"]