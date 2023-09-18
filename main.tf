resource "aws_vpc" "xc-vpc" {
  cidr_block = "172.16.0.0/16"
}

resource "aws_subnet" "xc-subnet-private" {
  vpc_id     = aws_vpc.xc-vpc.id
  cidr_block = "172.16.10.0/24"
}

resource "aws_security_group" "allow_all" {
  name        = "allow_RE"
  description = "Allow XC REs inbound traffic"
  vpc_id      = aws_vpc.xc-vpc.id
  tags = {
    Name = "allow_all"
  }
}

resource "aws_security_group_rule" "public_out" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
 
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "github_runner_in" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = [var.runner_ip]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "support_in" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = [var.support]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_1" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["5.182.215.0/25"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_2" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["84.54.61.0/25"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_3" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["23.158.32.0/25"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_4" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["84.54.62.0/25"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_5" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["185.94.142.0/25"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_6" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["185.94.143.0/25"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_7" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["159.60.190.0/24"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_8" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["159.60.168.0/24"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_9" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["5.182.212.0/23"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_10" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["84.54.60.0/25"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_11" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["185.56.154.0/25"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_12" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["159.60.160.0/24"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_13" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["159.60.162.0/24"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_14" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["159.60.188.0/24"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_15" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["103.135.56.0/22"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_16" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["159.60.189.0/24"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_17" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["159.60.166.0/24"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_security_group_rule" "re_18" {
  type              = "ingress"
  from_port         = 1000
  to_port           = 1016
  protocol          = "tcp"
  cidr_blocks       = ["159.60.164.0/24"]
  security_group_id = aws_security_group.allow_all.id
}

resource "aws_network_interface" "xc-nic" {
  subnet_id       = aws_subnet.xc-subnet-private.id
  private_ips     = ["172.16.10.100"]
  security_groups = [aws_security_group.allow_all.id]


  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "xc-vm" {
  ami           = "ami-0574da719dca65348"
  instance_type = "m5.4xlarge"
  key_name      = "aws-key"
  network_interface {
    network_interface_id = aws_network_interface.xc-nic.id
    device_index         = 0
  }
  tags = {
    Name = "Juice-Shop Production"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws-key"
  public_key = var.public_key
}

resource "aws_eip" "xc-public-ip" {
  vpc               = true
  network_interface = aws_network_interface.xc-nic.id
}

resource "aws_internet_gateway" "xc-gateway" {
  vpc_id = aws_vpc.xc-vpc.id
}

resource "aws_route" "internet-route" {
  destination_cidr_block = "0.0.0.0/0"
  route_table_id         = aws_route_table.xc-route-table.id
  gateway_id             = aws_internet_gateway.xc-gateway.id
}

resource "aws_route_table" "xc-route-table" {
  vpc_id = aws_vpc.xc-vpc.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.xc-subnet-private.id
  route_table_id = aws_route_table.xc-route-table.id
}


output "securitygroup_id" {
  value = aws_security_group.allow_all.id
}

output "xc-public-ip" {
  value = ["${aws_instance.xc-vm.*.public_ip}"]
}

output "_VPC_ID" {
  value = aws_vpc.xc-vpc.id
}
output "EXTERNAL_SUBNET_ID" {
  value = aws_subnet.xc-subnet-private.id
}
