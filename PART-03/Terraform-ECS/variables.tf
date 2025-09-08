variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "flask-express-app"
}

variable "flask_backend_port" {
  description = "Port for Flask backend"
  type        = number
  default     = 5000
}

variable "express_frontend_port" {
  description = "Port for Express frontend"
  type        = number
  default     = 3000
}

variable "app_count" {
  description = "Number of Docker containers to run"
  type        = number
  default     = 1
}