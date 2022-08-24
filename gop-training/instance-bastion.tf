##################################################################################
# RESOURCES
##################################################################################

resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.amz.id
  associate_public_ip_address = true
  instance_type               = var.bastion_instance_type
  vpc_security_group_ids      = ["${module.bastion_sg.sg_id}"]
  subnet_id                   = element(module.subnet.sn_web_id, 1)

  tags = {
    Name = "Bastion"
  }
}
