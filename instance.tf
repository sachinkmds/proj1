resource "aws_instance" "myec2" {
  tags = {
    Name = "inst1"
  }
  ami           = "ami-0e4fd655fb4e26c30"
  instance_type = "t2.micro"
  key_name      = "mumbaikey"
  user_data = <<-EOF
  #!/bin/bash
  yum update -y
  yum install -y httpd
  systemctl start httpd
  systemctl enable httpd
  echo "<h1>HELLO</h1>" > /var/www/html/index.html
  EOF
}