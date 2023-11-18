FROM node:18-alpine
WORKDIR /app
COPY . .

RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

ENV NODE_ENV=development
ENV AMQP_URL="amqp://localhost:5672"
RUN npm ci
EXPOSE 3000
CMD ["node", "index.js"]