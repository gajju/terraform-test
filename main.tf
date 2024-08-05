# main.tf

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "TestInstance"
  }
}

output "instance_id" {
  value = aws_instance.test_instance.id
}

output "instance_public_ip" {
  value = aws_instance.test_instance.public_ip
}
