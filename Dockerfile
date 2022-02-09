FROM node:12.13.0-alpine AS alpine
WORKDIR /app
COPY package.json .
RUN npm install 
COPY . .
EXPOSE 8080
CMD ["npm", "run", "start"]
