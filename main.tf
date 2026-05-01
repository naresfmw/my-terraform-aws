provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "test_server" {
  ami           = "ami-0df7a207adb9748c7"
  instance_type = "t2.micro"

  tags = {
    Name = "GitHubActionsTest"
  }
}

# test github run