output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.main.dns_name
}

output "flask_backend_ecr_repo_url" {
  description = "URL of the ECR repository for Flask backend"
  value       = aws_ecr_repository.flask_backend.repository_url
}

output "express_frontend_ecr_repo_url" {
  description = "URL of the ECR repository for Express frontend"
  value       = aws_ecr_repository.express_frontend.repository_url
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.main.name
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "flask_backend_url" {
  description = "URL for Flask backend API"
  value       = "http://${aws_lb.main.dns_name}/api"
}

output "express_frontend_url" {
  description = "URL for Express frontend"
  value       = "http://${aws_lb.main.dns_name}"
}