resource "aws_instance" "web_server" {
  ami                    = "ami-0c55b159cbfafe1f0"  
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  subnet_id              = aws_subnet.my_subnet.id

  tags = {
    Name = "Terraform EC2 Instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              systemctl start apache2
              EOF
}
