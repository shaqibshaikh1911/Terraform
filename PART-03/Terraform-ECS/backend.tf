terraform {
  backend "s3" {
    bucket         = "aecinspire-terraform-state-2024"  # Your unique bucket name
    key            = "flask-express-app/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}