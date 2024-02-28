resource "aws_instance" "forntend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}


data "aws_ami" "Centos" {

  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}
  output "ami" {
    value = data.aws_ami.Centos.image_id
  }


output "forntend" {
  value = aws_instance.forntend.public_ip
}

resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "redis" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "mango" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mango"
  }
}

resource "aws_instance" "user" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}

resource "aws_instance" "cart" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "mysql" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "shipping" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_instance" "payment" {
  ami           = data.aws_ami.Centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "payment"
  }
}