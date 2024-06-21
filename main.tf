
#############################[ SSH SECURITY GROUP]################################################
module "aws_security_group_ssh" {

  source = "git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/Modules/child_module/Openvpn/ssh_sg?ref=Dev"

  ssh_port_ingress = var.ssh_port_ingress2

  protocol_ingress = var.protocol_ingress2
  ssh_cidr_blocks  = var.ssh_cidr_blocks2

  protocol_egress = var.protocol_egress2
  ssh_port_egress = var.ssh_port_egress2
  
}

#############################[ VPN SECURITY GROUP]################################################


module "aws_security_group_vpn" {

  source = "git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/Modules/child_module/Openvpn/vpn_sg?ref=Dev"

  vpn_port_ingress = var.ssh_port_ingress2

  protocol_ingress = var.protocol_ingress2
  vpn_cidr_blocks  = var.ssh_cidr_blocks2

  protocol_egress = var.protocol_egress2
  vpn_port_egress = var.ssh_port_egress2
  

}
##################################[ EC2 ]################################################################

module "aws_vpn_ec2" {

  source           = "git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/Modules/child_module/Openvpn/ec2?ref=Dev"
  ami_id           = var.ami_id2
  instance_type    = var.instance_type2
  key_name         = var.key_name2
  sg-ids           = [module.aws_security_group_ssh.out_ssh_sg, module.aws_security_group_vpn.out_vpn_sg]
  tag_name         = var.tag_name2
  client_name      = var.client_name2
  vpn_port_ingress = var.vpn_port_ingress2
  
 
  sgs = [module.aws_security_group_ssh.out_ssh_sg_name.id, module.aws_security_group_vpn.out_vpn_sg_name.id]
}








#################################[EIP]#############################################################3

module "aws_ec2" {

  source = "git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/Modules/child_module/Openvpn/eip?ref=Dev"
  ec2-id = module.aws_vpn_ec2.out_ec2
}
