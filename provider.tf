provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = "Training-development-team"
      Owner       = "Training-development-team"
    }
  }
}

terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "xc-juiceshop-bucket"
    key    = "xc-juiceshop-prod/terraform.tfstate"
  }
}
