terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "john-recipie-app-1285w7354-u94v-52y8-f338-916055440004"
    key            = "tf-state-setup"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "devops-recipe-app-api-tf-lock"
  }

}


provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}
