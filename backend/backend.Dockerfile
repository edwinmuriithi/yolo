FROM node:latest
RUN mkdir -p /app
WORKDIR /app
COPY backend/package*.json ./
RUN npm install
COPY backend/ .
EXPOSE $PORT
CMD ["npm","start"]