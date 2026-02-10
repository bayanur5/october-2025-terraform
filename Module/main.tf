provider "aws" {
  region = "us-east-1"
}

module "hello" {
    source ="kaizenacademy/hello/vpc"
    verion = "1.0.0"
    region = "us-east-1"
    vpc_cidr = "10.0.0.0/16"
}