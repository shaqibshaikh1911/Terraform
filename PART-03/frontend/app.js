const express = require('express');
const app = express();
const port = 3000;

// Middleware
app.use(express.json());
app.use(express.static('public'));

// Routes
app.get('/', (req, res) => {
  res.json({
    message: "Welcome to the Simple Express Frontend",
    status: "success",
    backend_api: "http://backend:5000/api"
  });
});

app.get('/health', (req, res) => {
  res.json({
    status: "healthy",
    service: "express-frontend",
    timestamp: new Date().toISOString()
  });
});

app.get('/api/greet', (req, res) => {
  res.json({
    message: "Hello from Express Frontend!",
    feature: "This frontend can connect to the Flask backend"
  });
});

app.get('/api/info', (req, res) => {
  res.json({
    service: "express-frontend",
    version: "1.0.0",
    description: "Simple frontend service that can communicate with Flask backend",
    endpoints: {
      health: "/health",
      greet: "/api/greet",
      home: "/"
    }
  });
});

// Start server
app.listen(port, '0.0.0.0', () => {
  console.log(`Express frontend running on http://0.0.0.0:${port}`);
});