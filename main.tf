
# 1. Configure the AWS Cloud Provider
provider "aws" {
  region = "us-east-2"
}

# 2. Tell Terraform to declare a blank AWS EC2 Server Box
resource "aws_instance" "gabby_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Standard Ubuntu cloud image template
  instance_type = "t2.micro"
  key_name      = "gabby-demo"            # Tells AWS to link your private door key!

  tags = {
    Name = "gabby-nton-infrastructure-node"
  }
}

