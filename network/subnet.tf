resource "aws_subnet" "public_a" {
  availability_zone       = "ap-southeast-1a"
  cidr_block              = var.public_a_subnet_cidr_block
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.this.id

  tags = {
    Name = "${local.name_prefix}-public-a"
  }
}

resource "aws_subnet" "public_c" {
  availability_zone       = "ap-southeast-1c"
  cidr_block              = var.public_c_subnet_cidr_block
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.this.id

  tags = {
    Name = "${local.name_prefix}-public-c"
  }
}

/*
resource "aws_subnet" "private_a" {
  availability_zone       = "ap-southeast-1a"
  cidr_block              = "100.0.32.0/20"
  map_public_ip_on_launch = false
  vpc_id                  = aws_vpc.this.id

  tags = {
    Name = "${local.name_prefix}-public-a"
  }
}

resource "aws_subnet" "private_c" {
  availability_zone       = "ap-southeast-1c"
  cidr_block              = "100.0.48.0/20"
  map_public_ip_on_launch = false
  vpc_id                  = aws_vpc.this.id

  tags = {
    Name = "${local.name_prefix}-public-c"
  }
}
*/
