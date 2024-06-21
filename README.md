<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_ec2"></a> [aws\_ec2](#module\_aws\_ec2) | git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/Modules/child_module/Openvpn/eip | Dev |
| <a name="module_aws_security_group_ssh"></a> [aws\_security\_group\_ssh](#module\_aws\_security\_group\_ssh) | git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/Modules/child_module/Openvpn/ssh_sg | Dev |
| <a name="module_aws_security_group_vpn"></a> [aws\_security\_group\_vpn](#module\_aws\_security\_group\_vpn) | git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/Modules/child_module/Openvpn/vpn_sg | Dev |
| <a name="module_aws_vpn_ec2"></a> [aws\_vpn\_ec2](#module\_aws\_vpn\_ec2) | git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/Modules/child_module/Openvpn/ec2 | Dev |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id2"></a> [ami\_id2](#input\_ami\_id2) | The AMI ID to use for the EC2 instance. | `string` | `"ami-0f30a9c3a48f3fa79"` | no |
| <a name="input_client_name2"></a> [client\_name2](#input\_client\_name2) | The client name for the OpenVPN configuration. | `string` | `"david"` | no |
| <a name="input_instance_type2"></a> [instance\_type2](#input\_instance\_type2) | The instance type for the EC2 instance. | `string` | `"t2.micro"` | no |
| <a name="input_key_name2"></a> [key\_name2](#input\_key\_name2) | The SSH key name to use for the EC2 instance. | `string` | `"ohio_key"` | no |
| <a name="input_protocol_egress2"></a> [protocol\_egress2](#input\_protocol\_egress2) | protocol for ssh server. | `string` | `"-1"` | no |
| <a name="input_protocol_ingress2"></a> [protocol\_ingress2](#input\_protocol\_ingress2) | protocol for ssh server. | `string` | `"tcp"` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS region to deploy resources in. | `string` | `"us-east-2"` | no |
| <a name="input_sg_name2"></a> [sg\_name2](#input\_sg\_name2) | name for security group | `string` | `"ovpn-ssh-sg"` | no |
| <a name="input_ssh_cidr_blocks2"></a> [ssh\_cidr\_blocks2](#input\_ssh\_cidr\_blocks2) | List of CIDR blocks allowed to SSH into the EC2 instance. | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_ssh_port_egress2"></a> [ssh\_port\_egress2](#input\_ssh\_port\_egress2) | The port number for the ssh server. | `number` | `0` | no |
| <a name="input_ssh_port_ingress2"></a> [ssh\_port\_ingress2](#input\_ssh\_port\_ingress2) | The port number for the ssh server. | `number` | `22` | no |
| <a name="input_tag_name2"></a> [tag\_name2](#input\_tag\_name2) | The name tag for the EC2 instance. | `string` | `"OpenVPN Demo"` | no |
| <a name="input_vpn_cidr_blocks2"></a> [vpn\_cidr\_blocks2](#input\_vpn\_cidr\_blocks2) | List of CIDR blocks allowed to connect to the OpenVPN server. | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_vpn_port_egress2"></a> [vpn\_port\_egress2](#input\_vpn\_port\_egress2) | The port number for the OpenVPN server. | `number` | `0` | no |
| <a name="input_vpn_port_ingress2"></a> [vpn\_port\_ingress2](#input\_vpn\_port\_ingress2) | The port number for the OpenVPN server. | `number` | `1194` | no |
| <a name="input_vpn_sg_name2"></a> [vpn\_sg\_name2](#input\_vpn\_sg\_name2) | name for vpn security group | `string` | `"ovpn-vpn-sg"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->