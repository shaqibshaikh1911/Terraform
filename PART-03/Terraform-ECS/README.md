# My Terraform Project

This project is a Terraform configuration that defines and manages infrastructure resources. Below is a brief overview of the files included in this project:

## File Structure

- `main.tf`: The main configuration file where resources are defined.
- `variables.tf`: Contains input variable declarations for the Terraform configuration.
- `outputs.tf`: Defines output values that are displayed after the infrastructure is created.
- `providers.tf`: Specifies the providers used to interact with cloud services or APIs.
- `backend.tf`: Configures the backend for storing the Terraform state file.
- `README.md`: Documentation for the project.

## Getting Started

1. **Prerequisites**: Ensure you have Terraform installed on your machine.
2. **Clone the Repository**: Clone this repository to your local machine.
3. **Initialize Terraform**: Run `terraform init` to initialize the project and download the necessary providers.
4. **Plan the Deployment**: Use `terraform plan` to see the resources that will be created.
5. **Apply the Configuration**: Execute `terraform apply` to create the defined resources.

## Usage

Customize the variables in `variables.tf` as needed for your environment. After making changes, remember to run `terraform plan` and `terraform apply` to update your infrastructure.

## License

This project is licensed under the MIT License. See the LICENSE file for more information.

Commands I used in the Terminal

# Authenticate with ECR (use your account ID from the output)
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 147997125448.dkr.ecr.us-west-2.amazonaws.com

# Build and push Flask backend
cd backend
docker build -t flask-backend .
docker tag flask-backend:latest 147997125448.dkr.ecr.us-west-2.amazonaws.com/flask-backend:latest
docker push 147997125448.dkr.ecr.us-west-2.amazonaws.com/flask-backend:latest

# Build and push Express frontend
cd ../frontend  
docker build -t express-frontend .
docker tag express-frontend:latest 147997125448.dkr.ecr.us-west-2.amazonaws.com/express-frontend:latest
docker push 147997125448.dkr.ecr.us-west-2.amazonaws.com/express-frontend:latest

# Test Express frontend
curl http://flask-express-app-alb-612002336.us-west-2.elb.amazonaws.com

# Test Flask backend health check
curl http://flask-express-app-alb-612002336.us-west-2.elb.amazonaws.com/api/health

# Test Flask backend data endpoint
curl http://flask-express-app-alb-612002336.us-west-2.elb.amazonaws.com/api/data

# Test Flask backend greeting endpoint
curl http://flask-express-app-alb-612002336.us-west-2.elb.amazonaws.com/api/greet/John

Manual Cleanup 

# Delete ECR repositories manually
aws ecr delete-repository --repository-name flask-backend --force
aws ecr delete-repository --repository-name express-frontend --force

# Delete S3 bucket (after terraform destroy)
aws s3 rb s3://aecinspire-terraform-state-2024 --force

# Delete DynamoDB table
aws dynamodb delete-table --table-name terraform-locks

 Run Terraform Destroy

 cd Terraforn-ECS
terraform destroy
