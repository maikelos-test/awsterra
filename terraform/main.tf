terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.61"
    }
  }

  required_version = ">=0.14.9"

  backend "s3" {
    bucket         = "m272-terraformstate"
    key            = "m272-terrastate"
    region         = "eu-north-1"
    dynamodb_table = "m272-terra-state"
  }

}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "this" {
  bucket = "m272-terra-test2"
}