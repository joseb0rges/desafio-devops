resource "aws_security_group" "allow-all" {
name="allow-all"
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 3389
to_port = 3389
protocol = "tcp"
cidr_blocks = [var.RANGER_CIDR]
}
 
ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
 

ingress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
 

tags = {
    Name = "allow_ports"
  }
 
}
