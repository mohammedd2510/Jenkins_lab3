resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.aws_subnet_cidr
  availability_zone = "us-east-1a"
  tags = {
    Name = "Public Subnet"
  }
}
