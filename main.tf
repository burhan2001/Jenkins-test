terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
  region     = "ap-southeast-2"
  access_key = "AKIAUCN7A56BC5D3GAFT"
  secret_key = "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"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}