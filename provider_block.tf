terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.37.0"
    }
  }
  required_version = ">= 0.15.1"  # force use of tf version
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "${file("./awsacc.txt")}"
  secret_key = "${file("./awsq.txt")}"
}
