FROM NODE:10

WORKDIR /user/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV


COPY ./user/src/app
RUN npm install
RUN npm run build

EXPOSE 8080
CMD ["npm", "start"]
