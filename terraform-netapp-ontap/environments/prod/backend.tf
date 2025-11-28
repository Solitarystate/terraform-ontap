terraform {
  backend "s3" {
    bucket         = "your-prod-bucket-name"
    key            = "terraform/prod/terraform.tfstate"
    region         = "your-region"
    encrypt        = true
    dynamodb_table = "your-prod-lock-table"
  }
}