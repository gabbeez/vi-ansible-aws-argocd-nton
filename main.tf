# 1. Configure the AWS Cloud Provider
provider "aws" {
  region = "us-east-1"
}

# 2. Tell Terraform to declare a blank AWS EC2 Server Box
resource "aws_instance" "gabby_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Standard Ubuntu cloud image template
  instance_type = "t2.micro"

  tags = {
    Name = "gabby-nton-infrastructure-node"
  }
}

