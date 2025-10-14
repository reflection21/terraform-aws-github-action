# ec2

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_availability_zones.available_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_names"></a> [ec2\_names](#input\_ec2\_names) | names for ec2 | `list(string)` | <pre>[<br/>  "WebServer1",<br/>  "WebServer2"<br/>]</pre> | no |
| <a name="input_sg_ec2"></a> [sg\_ec2](#input\_sg\_ec2) | sg for ec2 | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | sup for ec2 | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instances"></a> [instances](#output\_instances) | n/a |
<!-- END_TF_DOCS -->
