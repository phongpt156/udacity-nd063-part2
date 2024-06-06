# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = "ami-00beae93a2d981137"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0ce15d042ab1cb476"
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_M4" {
#   ami           = "ami-00beae93a2d981137"
#   count         = "2"
#   instance_type = "m4.large"
#   subnet_id     = "subnet-0ce15d042ab1cb476"
#   tags = {
#     Name = "Udacity M4"
#   }
# }
