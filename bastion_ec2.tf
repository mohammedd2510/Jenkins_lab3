resource "aws_instance" "web" {
  ami           =  "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"  # Change to your desired instance type
  subnet_id     = aws_subnet.main.id
  associate_public_ip_address = true  # Enable public IP

  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "Bastion-Instance"
  }
  key_name = "key"

}

output "ec2_public_ip" {
  value = aws_instance.web.public_ip
  description = "The public IP address of the EC2 instance"
}