resource "aws_security_group" "all_worker" {
    name_prefix = "all_worker"
    vpc_id = module.vpc.vpc_id  
}

resource "aws_security_group_rule" "all_worker_ingress" {
    description = "allow inbound traffic from eks"
    from_port = 0
    protocol = "-1"
    to_port = 0
    security_group_id = aws_security_group.all_worker.id
    type = "ingress"
    cidr_blocks = [
        "10.0.0.0/8",
        "172.16.0.0/12",
        "192.168.0.0/16",
    ]
}

resource "aws_security_group_rule" "all_worker_egress" {
  description       = "allow outbound traffic from anywhere"
  from_port         = 0
  protocol          = "-1"
  to_port           = 0
  security_group_id = aws_security_group.all_worker.id
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}
