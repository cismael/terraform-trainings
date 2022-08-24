module "bastion_sg" {
  source = "./modules/sg"

  sg_name        = "Bastion_sg"
  sg_description = "Bastion security group"
  ingress_ports  = var.bastion_ingress_ports
  vpc_id         = module.vpc.vpc_id

  sg_tags = {
    Name = "Bastion_sg"
  }
}
