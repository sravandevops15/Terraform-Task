resource "aws_instance" "ec2-user-data" {
  ami           = var.ami
  key_name      = var.key
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids  = [ aws_security_group.sg.id ]  
  user_data     = file("user_data.sh")

  tags = {
    Name = "ec2-instance"
  }
}
