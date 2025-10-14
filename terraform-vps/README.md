# terraform-vps

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.37.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | ./module/alb | n/a |
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./module/ec2 | n/a |
| <a name="module_sg"></a> [sg](#module\_sg) | ./module/sg | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./module/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | CIDR subnets | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR VPS range | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
