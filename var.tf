#################################[SSH Security Group]#############################################################3
variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-2"
}
variable "ssh_cidr_blocks2" {
  description = "List of CIDR blocks allowed to SSH into the EC2 instance."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ssh_port_ingress2" {
  description = "The port number for the ssh server."
  type        = number
  default     = 22
}

variable "ssh_port_egress2" {
  description = "The port number for the ssh server."
  type        = number
  default     = 0
}

variable "sg_name2" {
  description = "name for security group"
  type = string
  default     = "ovpn-ssh-sg"
}


#################################[VPN Security Group]#############################################################3


variable "vpn_cidr_blocks2" {
  description = "List of CIDR blocks allowed to connect to the OpenVPN server."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "vpn_port_ingress2" {
  description = "The port number for the OpenVPN server."
  type        = number
  default     = 1194
}

variable "vpn_port_egress2" {
  description = "The port number for the OpenVPN server."
  type        = number
  default     = 0
}


variable "protocol_ingress2" {
  description = "protocol for ssh server."
  type        = string
  default     = "tcp"
}

variable "protocol_egress2" {
  description = "protocol for ssh server."
  type        = string
  default     = "-1"
}
variable "vpn_sg_name2" {
  description = "name for vpn security group"
  type = string
  default     = "ovpn-vpn-sg"
}
#################################[ EC2]#############################################################3


variable "ami_id2" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
  default     = "ami-0f30a9c3a48f3fa79" # Default Ubuntu AMI in ap-southeast-1
}

variable "instance_type2" {
  description = "The instance type for the EC2 instance."
  type        = string
  default     = "t2.micro"
}

variable "key_name2" {
  description = "The SSH key name to use for the EC2 instance."
  type        = string
  default     = "ohio_key"
}


variable "tag_name2" {
  description = "The name tag for the EC2 instance."
  type        = string
  default     = "OpenVPN Demo"
}

variable "client_name2" {
  description = "The client name for the OpenVPN configuration."
  type        = string
  default     = "david"
}










#############################[EIP]]#############################################################3





#################################[SSH Security Group]#############################################################3
