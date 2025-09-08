FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]

## Build the Docker image
# docker build -t simple-flask-backend .

# Run the container
# docker run -d -p 5000:5000 --name flask-app simple-flask-backend

# Test the endpoints
# curl http://localhost:5000/
# curl http://localhost:5000/api/health
# curl http://localhost:5000/api/greet/John
# curl http://localhost:5000/api/data