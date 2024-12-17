terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 5.41.0"

    }
  }
}

provider "aws" {
  region = "ap-northeast-1"

}

variable "create_instance" {
  type    = bool
  default = false
}

resource "aws_instance" "server" {
  count = var.create_instance ? 1 : 0

  ami           = "ami-0eba6c58b7918d3a1"
  instance_type = "t2.micro"

  tags = {
    Name = "Server"
  }
}