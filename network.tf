#--network.tf--

# Retrieve the list of AZs in the current AWS region
data "aws_availability_zones" "available" {}

locals {
  name_prefix = lower("${var.app_name}-${var.environment}")
  azs         = slice(data.aws_availability_zones.available.names, 0, var.az_count)
}