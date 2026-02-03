data "aws_vpc" "selected" {
    filter {
      name = "tag:Name"
      values = ["kaizen"]

    }
}

resource "aws_subnet" "hello" {
  vpc_id     = data.aws_vpc.selected.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "hello2"
  }
}