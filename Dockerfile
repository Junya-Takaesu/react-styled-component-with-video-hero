FROM node:alpine
WORKDIR /styled-components
ENV PATH=/styled-components/node_modules/.bin:$PATH
ENV PORT=3001
COPY package.json ./
COPY yarn.lock ./
RUN yarn
COPY . ./
CMD ["yarn", "start"]