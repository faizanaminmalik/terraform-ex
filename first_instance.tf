provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "intro" {
      ami                    = "ami-0f9fc25dd2506cf6d"
      instance_type          = "t2.micro"
      availability_zone      = "us-east-1a"
      key_name               = "terraform_keypair"
      vpc_security_group_ids = ["sg-0d9a185fea37fab7b"]
      tags = {
        Name = "Dove-instance"
    }

  }
