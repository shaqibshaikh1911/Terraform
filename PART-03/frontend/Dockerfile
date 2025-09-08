FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]


# # Build the Docker image
# docker build -t simple-express-frontend .

# # Run the container
# docker run -d -p 3000:3000 --name express-app simple-express-frontend

# # Test the endpoints
# curl http://localhost:3000/
# curl http://localhost:3000/health
# curl http://localhost:3000/api/greet
# curl http://localhost:3000/api/info