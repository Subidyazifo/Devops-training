from node:14
WORKDIR /USR/SRC/APP
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node","app.js"]
