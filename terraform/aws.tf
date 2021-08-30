terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "access_key" {
    type        = string
}

variable "secret_key" {
    type        = string
}

variable "keypair_name" {
    type        = string
}

variable "security_group" {
    type        = string
}


# Configure the AWS Provider
provider "aws" {
  region     = "us-east-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t3.micro"
  security_groups = [var.security_group]
  key_name      = var.keypair_name
  tags = {
    Name = "HelloWorld"
  }

}



